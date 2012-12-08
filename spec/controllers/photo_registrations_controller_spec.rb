require 'spec_helper'

describe PhotoRegistrationsController do
	let!(:photo_registration1) { create(:photo_registration) }
	let!(:photo_registration2) { create(:photo_registration) }
	let!(:photo_registration3) { create(:photo_registration) }
	let!(:book1) { create(:book, :photo_registrations => [photo_registration1, photo_registration2, photo_registration3]) }
	let!(:book2) { create(:book) }
	let!(:book3) { create(:book) }
	let!(:user1) { create(:confirmed_user, :photo_registrations => [photo_registration1]) }
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
			context "there are photo registrations" do
			  it "should list all photo registrations" do
			    get :index, :book_id => book1.id, :page => 1
			    assigns(:photo_registrations).should == [photo_registration1, photo_registration2, photo_registration3]
			    response.should render_template "index"
			  end
			end
			context "there is no photo registration" do
			  it "should list nothing" do
			    get :index, :book_id => book2.id, :page => 1
			    assigns(:photo_registrations).should be_empty
			    response.should redirect_to '/books/index/1'
			  end
			end
		end


		context "normal user logined" do
			context "there are photo registrations" do
				before do
					sign_in user1
				end
			  it "should list all photo registrations" do
			    get :index, :page => 1
			    assigns(:photo_registrations).should == [photo_registration1]
			    response.should render_template "index"
			  end
			end
			context "there is no photo registration" do
			  before do
					sign_in user2
				end
			  it "should list nothing" do
			    get :index, :page => 1
			    assigns(:photo_registrations).should be_empty
			    response.should redirect_to '/photo_registrations/home/1'
			  end
			end
		end
	end

	describe "#show" do
		before do
			sign_in user1
		end
		context "given photo registration exists" do
			it "should return the photo registration" do
				get :show, :photo_registration_id => photo_registration1.id
				assigns(:photo_registration).should == photo_registration1
				assigns(:book).should == book1
				response.should render_template "show"
			end
		end
	end

	describe "#new" do
		before do
			sign_in user2
		end

		it "should create a new book registration" do
			expect {
				get :new, :book_id => book2.id
			}.to change{PhotoRegistration.count}.by(1)
			response.should redirect_to "/photo_registrations/home/1"
		end
	end

	describe "#delete" do
		context "normal user logined" do
			before do
				sign_in user1
			end
			context "there is one photo registration" do
				it "should delete an photo registration" do
					expect{
						post :delete, :photo_registration_id => photo_registration1.id
					}.to change{PhotoRegistration.count}.by(-1)
					response.should redirect_to '/photo_registrations/home/1'
				end
			end

			context "there are more than one photo registration" do
				it "should delete an photo registration" do
					user1.photo_registrations = user1.photo_registrations << photo_registration2
					expect{
						post :delete, :photo_registration_id => photo_registration1.id
					}.to change{PhotoRegistration.count}.by(-1)
					response.should redirect_to '/photo_registrations/index/1'
				end
			end
		end

		context "admin or librarian logined" do
			before do 
				sign_in librarian
			end
			context "there is one photo registration" do
				it "should delete an photo registration" do
					photo_registration2.destroy
					photo_registration3.destroy
					expect{
						post :delete, :photo_registration_id => photo_registration1.id
					}.to change{PhotoRegistration.count}.by(-1)
					response.should redirect_to '/books/index/1'
				end
			end

			context "there are more than one photo registration" do
				it "should delete an photo registration" do
					expect{
						post :delete, :photo_registration_id => photo_registration1.id
					}.to change{PhotoRegistration.count}.by(-1)
					response.should redirect_to "/photo_registrations/index/1?book_id=#{photo_registration1.book.id}"
				end
			end
		end
	end	
end