require 'spec_helper'

describe BooksController do
	let!(:book1) { create(:book) }
	let!(:book2) { create(:book) }
	let!(:book3) { create(:book) }
	let!(:librarian) { create (:librarian) }
	before do
		sign_in librarian
	end

	describe "#index" do
		context "there are less than 12 books" do
			it "should return all books" do
				get :index, :page => 1
				assigns(:books).should == [book1, book2, book3]
				response.should render_template "index"
			end
		end

		context "there are more than 12 books" do
			for i in 4..12 do
				let!("book#{i}") { create(:book) }
			end

			it "should return first 12 books" do
				get :index, :page => 1
				assigns(:books).should == [book1, book2, book3, book4, book5, book6, book7, book8, book9, book10, book11, book12]
				response.should render_template "index"
			end
		end
	end

	describe "#show" do
		context "given book exists" do
			it "should return the book" do
				get :show, :book_id => book1.id
				assigns(:book).should == book1
				response.should render_template "show"
			end
		end
	end

	describe "#new" do
		it "should create a new book" do
			get :new
			assigns(:book).should_not be_nil
			response.should render_template "new"
		end
	end

	describe "#create" do
		context "valid book" do
			it "should successfully create the book" do
				expect{
					post :create, :book => { :title => "Book122", :book_code => "123", :image_url => "blabla" }
				}.to change{Book.count}.by(1)
				response.should redirect_to "/books/show/#{Book.last.id}"
			end
		end

		context "invalid book" do
			it "should not create the book" do
				expect{
					post :create, :book => {}
				}.to change{Book.count}.by(0)
				response.should render_template "new"
			end
		end
	end

	describe "#edit" do
		context "valid book" do
			it "should get a book" do
				get :edit, :book_id => book1.id
				assigns(:book).should_not be_nil
				response.should render_template "edit"
			end
		end
	end

	describe "#update" do
		context "valid book" do
			it "should successfully update the book" do
				post :update, :book => { :title => "Book122", :book_code => "123", :image_url => "blabla" }, :book_id => book1.id
				response.should redirect_to "/books/show/#{book1.id}"
			end
		end

		context "invalid book" do
			it "should not update the book" do
				post :update, :book => {:book_code => book2.book_code}, :book_id => book1.id
				response.should render_template "edit"
			end
		end
	end

	describe "#delete" do
		it "should delete an book" do
			expect{
				post :delete, :book_id => book1.id
			}.to change{Book.count}.by(-1)
			response.should redirect_to '/books/index/1'
		end
	end	
end