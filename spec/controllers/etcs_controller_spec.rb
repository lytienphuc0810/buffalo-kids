require 'spec_helper'

describe EtcsController do
	describe "#faq" do
		context "html response" do
			it "should render hmtl" do
				get :faq
				response.should render_template "etcs/faq"
			end
		end
	end
	
	describe "#contact" do
		context "html response" do
			it "should render hmtl" do
				get :contact
				response.should render_template "etcs/contact"
			end
		end
	end

	describe "#set_en" do
		context "there is no user" do
			it "should set the language session to en" do
				post :set_en
				session[:lang].should == "en"
				response.should redirect_to "/"
			end
		end

		context "there is a user" do
			let(:user) { create(:confirmed_user) }
			before do
				sign_in user
			end	
			it "should set the language attribute of the current user to en" do
				post :set_en
				user.reload.locale.should == "en"
				response.should redirect_to "/"
			end	
		end
	end

	describe "#set_vi" do
		context "there is no user" do
			it "should set the language session to vi" do
				post :set_vi
				session[:lang].should == "vi"
				response.should redirect_to "/"
			end
		end

		context "there is a user" do
			let(:user) { create(:confirmed_user) }
			before do
				sign_in user
			end	
			it "should set the language attribute of the current user to en" do
				post :set_vi
				user.reload.locale.should == "vi"
				response.should redirect_to "/"
			end	
		end
	end
end