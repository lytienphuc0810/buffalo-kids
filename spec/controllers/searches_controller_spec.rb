require 'spec_helper'

describe SearchesController do
	let!(:book1) {create(:book)} 
	let!(:book2) {create(:book)} 
	let!(:book3) {create(:book)} 
	let!(:user1) {create(:confirmed_user)} 
	let!(:user2) {create(:confirmed_user)}
	let!(:librarian) {create(:librarian)}
	let!(:admin) {create(:admin)}
	
	describe "normal user logined" do	
		before do
			sign_in user1
		end

		describe "#book_search_reservation" do
			context "there is book with given value" do
				it "should return the book" do
					get :book_search_reservation, :page => 1, :param => book1.title
					assigns(:books).first.should == book1
					page.should render_template "book_search_reservation"
				end
			end

			context "there is no book with given value" do
				it "should not return the book" do
					get :book_search_reservation, :page => 1, :param => "123123"
					assigns(:books).should be_empty
					page.should render_template "book_search_reservation"
				end
			end
		end

		describe "#book_search_registration" do 
			context "there is book with given value" do
				it "should return the book" do
					get :book_search_registration, :page => 1, :param => book1.title
					assigns(:books).first.should == book1
					page.should render_template "book_search_registration"
				end
			end

			context "there is no book with given value" do
				it "should not return the book" do
					get :book_search_registration, :page => 1, :param => "123abc"
					assigns(:books).should be_empty
					page.should render_template "book_search_registration"
				end
			end
		end

		describe "#book_search" do 
			context "there is book with given value" do
				it "should return the book" do
					get :book_search, :page => 1, :param => book1.title
					assigns(:books).first.should == book1
					page.should render_template "book_search"
				end
			end

			context "there is no book with given value" do
				it "should not return the book" do
					get :book_search, :page => 1, :param => "123"
					assigns(:books).should be_empty
					page.should render_template "book_search"
				end
			end
		end

		describe "#user_search" do
			context "there is book with given value" do
				it "should return the book" do
					get :user_search, :page => 1, :param => user1.email
					assigns(:users).first.should == user1
					page.should render_template "user_search"
				end
			end

			context "there is no book with given value" do
				it "should not return the book" do
					get :user_search, :page => 1, :param => "1234"
					assigns(:users).should be_empty
					page.should render_template "user_search"
				end
			end
		end

		describe "#search" do 
			it "should render a search view" do
				get :search, :type => "user_search"
				page.should render_template "user_search"
			end
		end
	end

	describe "#book_advance_search" do
		
		context "user" do
			before do
				sign_in user1
			end

			context "book reservation" do
				it "should render book reservation search view" do
					get :book_advance_search, :page => 1, :title => book1.title, :reservation => "true"
					assigns(:books).first.should == book1
					page.should render_template "book_search_reservation"
				end
			end

			context "photo registration" do
				it "should render photo registration search view" do
					get :book_advance_search, :page => 1, :title => book1.title, :reservation => "false"
					assigns(:books).first.should == book1
					page.should render_template "book_search_registration"
				end
			end
		end

		context "librarian" do
			before do
				sign_in librarian
			end

			context "book reservation" do
				it "should render book reservation search view" do
					get :book_advance_search, :page => 1, :title => book1.title
					assigns(:books).first.should == book1
					page.should render_template "book_search"
				end
			end
		end

		context "admin" do
			before do
				sign_in admin
			end

			it "should redirect to root path" do
				get :book_advance_search, :page => 1
				page.should redirect_to root_path
			end
		end
	end
end