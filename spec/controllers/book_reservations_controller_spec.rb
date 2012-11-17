require 'spec_helper'

describe BookReservationsController do
	let!(:book_reservation1) { create(:book_reservation) }
	let!(:book_reservation2) { create(:book_reservation) }
	let!(:book_reservation3) { create(:book_reservation) }
	let!(:book_instance1) { create(:book_instance, :book_reservation => book_reservation1) }
	let!(:book_instance2) { create(:book_instance, :book_reservation => book_reservation2) }
	let!(:book_instance3) { create(:book_instance, :book_reservation => book_reservation3) }
	let!(:book_instance4) { create(:book_instance) }
	let!(:book1) { create(:book, :book_instances => [book_instance1, book_instance2, book_instance3]) }
	let!(:book2) { create(:book, :book_instances => [book_instance4]) }
	let!(:book3) { create(:book) }
	let!(:user1) { create(:confirmed_user, :book_reservations => [book_reservation1]) }
	let!(:user2) { create(:confirmed_user) }
	let!(:librarian) { create (:librarian) }

	describe "#home" do
		before do
			sign_in user1
		end
		context "there are less than 12 books" do
			it "should return all books" do
				get :home, :page => 1
				assigns(:books).should == [book1, book2, book3]
				response.should render_template "home"
			end
		end

		context "there are more than 12 books" do
			for i in 4..12 do
				let!("book#{i}") { create(:book) }
			end

			it "should return first 12 books" do
				get :home, :page => 1
				assigns(:books).should == [book1, book2, book3, book4, book5, book6, book7, book8, book9, book10, book11, book12]
				response.should render_template "home"
			end
		end
	end

	describe "#index" do
		context "admin or librarian logined" do
			before do
				sign_in librarian
			end
			context "there are book reservations" do
			  it "should list all book reservations" do
			    get :index, :book_id => book1.id, :page => 1
			    assigns(:book_reservations).should == [book_reservation1, book_reservation2, book_reservation3]
			    response.should render_template "index"
			  end
			end
			context "there is no book reservation" do
			  it "should list nothing" do
			    get :index, :book_id => book2.id, :page => 1
			    assigns(:book_reservations).should be_empty
			    response.should redirect_to '/books/index/1'
			  end
			end
		end


		context "normal user logined" do
			context "there are book reservations" do
				before do
					sign_in user1
				end
			  it "should list all book reservations" do
			    get :index, :page => 1
			    assigns(:book_reservations).should == [book_reservation1]
			    response.should render_template "index"
			  end
			end
			context "there is no book reservation" do
			  before do
					sign_in user2
				end
			  it "should list nothing" do
			    get :index, :page => 1
			    assigns(:book_reservations).should be_empty
			    response.should redirect_to '/book_reservations/home/1'
			  end
			end
		end
	end

	describe "#show" do
		before do
			sign_in user1
		end
		context "given book reservation exists" do
			it "should return the book reservation" do
				get :show, :book_reservation_id => book_reservation1.id
				assigns(:book_reservation).should == book_reservation1
				assigns(:book).should == book1
				response.should render_template "show"
			end
		end
	end

	describe "#new" do
		before do
			sign_in user2
		end
		context "there are free book instances" do
			it "should create a new book resvation" do
				expect {
					get :new, :book_id => book2.id
				}.to change{BookReservation.count}.by(1)
				response.should redirect_to "/book_reservations/home/1"
			end
		end

		context "there is no free book instance" do
			it "should create a new book resvation" do
				expect {
					get :new, :book_id => book1.id
				}.to change{BookReservation.count}.by(0)
			end
		end
	end

	describe "#delete" do
		context "normal user logined" do
			before do
				sign_in user1
			end
			context "there is one book reservation" do
				it "should delete an book reservation" do
					expect{
						post :delete, :book_reservation_id => book_reservation1.id
					}.to change{BookReservation.count}.by(-1)
					response.should redirect_to '/book_reservations/home/1'
				end
			end

			context "there are more than one book reservation" do
				it "should delete an book reservation" do
					user1.book_reservations = user1.book_reservations << book_reservation2
					expect{
						post :delete, :book_reservation_id => book_reservation1.id
					}.to change{BookReservation.count}.by(-1)
					response.should redirect_to '/book_reservations/index/1'
				end
			end
		end

		context "admin or librarian logined" do
			before do 
				sign_in librarian
			end
			context "there is one book reservation" do
				it "should delete an book reservation" do
					book_reservation2.destroy
					book_reservation3.destroy
					expect{
						post :delete, :book_reservation_id => book_reservation1.id
					}.to change{BookReservation.count}.by(-1)
					response.should redirect_to '/books/index/1'
				end
			end

			context "there are more than one book reservation" do
				it "should delete an book reservation" do
					expect{
						post :delete, :book_reservation_id => book_reservation1.id
					}.to change{BookReservation.count}.by(-1)
					response.should redirect_to "/book_reservations/index/1?book_id=#{book_reservation1.book.id}"
				end
			end
		end
	end	
end