require 'spec_helper'

describe BookInstancesController do
	let!(:instance1) { create(:book_instance) }
	let!(:instance2) { create(:book_instance) }
	let!(:instance3) { create(:book_instance) }
	let!(:book) { create(:book, :book_instances => [instance1, instance2, instance3]) }
	let!(:librarian) { create (:librarian) }
	before do
		sign_in librarian
	end

	describe "#index" do
		context "there are no book instances" do
			let!(:book1) { create(:book) }

			it "should redirect to book show page" do
				get :index, :page => 1, :book_id => book1.id
				response.should redirect_to "/books/show/#{book1.id}"
			end
		end

		context "there are less than 12 book instances" do
			it "should return all book instances" do
				get :index, :page => 1, :book_id => book.id
				assigns(:book_instances).should == [instance1, instance2, instance3]
				response.should render_template "index"
			end
		end

		context "there are more than 12 book instances" do
			for i in 4..12 do
				let!("instance#{i}") { create(:book_instance, :book => book) }
			end

			it "should return first 12 book instances" do
				get :index, :page => 1, :book_id => book.id
				assigns(:book_instances).should == [instance1, instance2, instance3, instance4, instance5, instance6, instance7, instance8, instance9, instance10, instance11, instance12]
				response.should render_template "index"
			end
		end
	end

	describe "#new" do
		it "should find a book with given id" do
			get :new, :book_id => book.id
			assigns(:book).should_not be_nil
			response.should render_template "new"
		end
	end

	describe "#create" do
		context "valid book instance" do
			it "should successfully create the book instance" do
				expect{
					post :create, :book_instance => { :book_instance_code => "12314123" }, :book_id => book.id
				}.to change{book.book_instances.count}.by(1)
				response.should redirect_to "/book_instances/index/#{book.id}/1"
			end
		end

		context "invalid book instance" do
			it "should not create the book instance" do
				expect{
					post :create, :book_id => book.id
				}.to change{book.book_instances.count}.by(0)
				response.should render_template "new"
			end
		end
	end

	describe "#edit" do
		context "valid book instance" do
			it "should get a book instance" do
				get :edit, :book_instance_id => instance1.id
				assigns(:book_instance).should_not be_nil
				response.should render_template "edit"
			end
		end
	end

	describe "#update" do
		context "valid book instance" do
			it "should successfully update the book instance" do
				post :update, :book_instance => { :book_instance_code => "12314123" }, :book_instance_id => instance1.id
				response.should redirect_to "/book_instances/index/#{book.id}/1"
			end
		end

		context "invalid book instance" do
			it "should not update the book instance" do
				post :update, :book_instance => { :book_instance_code => nil }, :book_instance_id => instance1.id
				response.should render_template "edit"
			end
		end
	end

	describe "#delete" do
		it "should delete an book instance" do
			expect{
				post :delete, :book_instance_id => instance1.id
			}.to change{book.book_instances.count}.by(-1)
			response.should redirect_to "/book_instances/index/#{book.id}/1"
		end
	end	
end