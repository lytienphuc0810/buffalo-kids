require 'spec_helper'

describe UsersController do
	let!(:user1) { create (:confirmed_user) }
	let!(:user2) { create (:confirmed_user) }
	let!(:user3) { create (:confirmed_user) }
	let!(:admin) { create (:admin) }
	before do
		sign_in admin
	end

	describe "#index" do

		context "there are less than 12 users" do
			it "should return all users" do
				get :index, :page => 1
				assigns(:users).should == [user1, user2, user3, admin]
				response.should render_template "index"
			end
		end

		context "there are more than 12 users" do
			for i in 4..12 do
				let!("user#{i}") { create (:confirmed_user) }
			end

			it "should return first 12 users" do
				get :index, :page => 1
				assigns(:users).should == [user1, user2, user3, admin, user4, user5, user6, user7, user8, user9, user10, user11]
				response.should render_template "index"
			end
		end
	end

	describe "#show" do
		it "should return a user" do
			get :show, :user_id => user1.id
			assigns(:user).should == user1
			response.should render_template "show"
		end
	end

	describe "#new" do
		it "should create a new user instance" do
			get :new
			assigns(:user).should_not be_nil
		end
	end

	describe "#create" do
		context "valid user" do
			it "should successfully create the user" do
				expect{
					post :create, :user => { :email => "user1@vit.com", :password => "123456", :username => "user1", :confirmed_at => Time.now }
				}.to change{User.count}.by(1)
				response.should redirect_to "/users/show/#{User.last.id}"
			end
		end

		context "invalid user" do
			it "should not create the user" do
				expect{
					post :create, :user => {}
				}.to change{User.count}.by(0)
				response.should render_template "new"
			end
		end
	end

	describe "#edit" do
		it "should get a user instance" do
			get :edit, :user_id => user1.id
			assigns(:user).should_not be_nil
			response.should render_template "edit"
		end
	end

	describe "#update" do
		context "valid user" do
			it "should successfully update the user" do
				post :update, :user => { :email => "user1@vit.com", :password => "123456", :username => "user1", :confirmed_at => Time.now }, :user_id => User.last.id
				response.should redirect_to "/users/show/#{User.last.id}"
			end
		end

		context "invalid user" do
			it "should not update the user" do
				post :update, :user => { :role => "xzxz" }, :user_id => User.last.id
				response.should render_template "edit"
			end
		end
	end

	describe "#delete" do
		it "should delete an user" do
			expect{
				post :delete, :user_id => User.first.id
			}.to change{User.count}.by(-1)
			response.should redirect_to '/users/index/1'
		end
	end	
end