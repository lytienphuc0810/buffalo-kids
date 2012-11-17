require 'spec_helper'

describe NoticesController do
	let!(:notice1) { create (:notice) }
	let!(:notice2) { create (:notice) }
	let!(:notice3) { create (:notice) }
	let!(:librarian) { create (:librarian) }
	before do
		sign_in librarian
	end

	describe "#index" do

		context "there are less than 12 notices" do
			it "should return all notices" do
				get :index, :page => 1
				assigns(:notices).should == [notice1, notice2, notice3]
				response.should render_template "index"
			end
		end

		context "there are more than 12 notices" do
			for i in 4..12 do
				let!("notice#{i}") { create (:notice) }
			end
			it "should return first 12 notices" do
				get :index, :page => 1
				assigns(:notices).should == [notice1, notice2, notice3, notice4, notice5, notice6, notice7, notice8, notice9, notice10, notice11, notice12]
				response.should render_template "index"
			end
		end
	end

	describe "#show" do
		it "should return a notice" do
			get :show, :notice_id => notice1.id
			assigns(:notice).should == notice1
			response.should render_template "show"
		end
	end

	describe "#new" do
		it "should create a new notice instance" do
			get :new
			assigns(:notice).should_not be_nil
		end
	end

	describe "#create" do
		context "valid notice" do
			it "should successfully create the notice" do
				expect{
					post :create, :notice => { :title => "Notice", :content => "test string" }
				}.to change{Notice.count}.by(1)
				response.should redirect_to "/notices/show/#{Notice.last.id}"
			end
		end

		context "invalid notice" do
			it "should not create the notice" do
				expect{
					post :create, :notice => {}
				}.to change{Notice.count}.by(0)
				response.should render_template "new"
			end
		end
	end

	describe "#edit" do
		it "should get a notice instance" do
			get :edit, :notice_id => notice1.id
			assigns(:notice).should_not be_nil
			response.should render_template "edit"
		end
	end

	describe "#update" do
		context "valid notice" do
			it "should successfully update the notice" do
				post :update, :notice => { :title => "Notice", :content => "test string" }, :notice_id => Notice.last.id
				response.should redirect_to "/notices/show/#{Notice.last.id}"
			end
		end

		context "invalid notice" do
			it "should not update the notice" do
				post :update, :notice => { :title => nil }, :notice_id => Notice.last.id
				response.should render_template "edit"
			end
		end
	end

	describe "#delete" do
		it "should delete an notice" do
			expect{
				post :delete, :notice_id => Notice.first.id
			}.to change{Notice.count}.by(-1)
			response.should redirect_to '/notices/index/1'
		end
	end	
end