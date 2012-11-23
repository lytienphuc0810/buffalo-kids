require 'spec_helper'

describe "admin page" do
	for i in 1..3 do
		let!("user#{i}") { create(:confirmed_user) }
	end
	let!(:admin) { create(:admin) }
	
	before do
		visit root_path
		fill_in "Email", :with => admin.email
		fill_in "Password", :with => "123456"
		click_button "Submit"
	end

	describe "USERS" do
		context "index" do
			it "should display all the users" do
				page.current_path.should == "/users/index/1"
				page.should have_link "CREATE"
				page.should have_link user1.username.upcase
				page.should have_link user2.username.upcase
				page.should have_link user3.username.upcase
			end
		end

		context "show" do
			before do
				click_on user1.username.upcase
			end
			it "should display the detailed information of the user" do
				page.current_path.should == "/users/show/#{user1.id}"
				page.should have_link "Edit"
				page.should have_link "Delete"
				page.should have_content "ID"
				page.should have_content "Email"
				page.should have_content "Role"
				page.should have_content "Created at"
			end
		end

		context "create" do
			before do
				click_on "CREATE"
			end

			context "successfully create the user" do
				before do
					fill_in "email", :with => "example@example.com"
					fill_in "username", :with => "example"
					fill_in "password", :with => "123456"
					fill_in "password_confirmation", :with => "123456"
					click_button "Create"
				end

				it "should successfully create the user" do
					page.current_path.should == "/users/show/#{User.last.id}"
					page.should have_content "example@example"
					page.should have_content "example"
				end
			end

			context "unsuccessfully create the user" do
				before do
					fill_in "email", :with => "example@example"
					fill_in "username", :with => "example"
					fill_in "password", :with =>"123456"
					click_button "Create"
				end

				it "should not create the user" do
					page.should have_content "error"
				end
			end
		end
	end
end