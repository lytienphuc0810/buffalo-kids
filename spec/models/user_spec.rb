require 'spec_helper'

describe User do
  subject { create(:confirmed_user) }
  
	it {should have_many :book_reservations}
	it {should have_many :photo_registrations}
	it {should have_many :book_instances}
	it {should have_many :books}
	it {should have_many :notices}

	it {should validate_presence_of :username}
	it {should validate_uniqueness_of :username}
  it {should ensure_inclusion_of(:role).in_array(User::ROLES) }

	context "create user with no role" do
		it "should create user with defaut role" do
			user = build(:user)
			user.should be_valid
			user.role.should == "user"
		end
	end

	context "create user with an invalid role" do
		it "should not create a user" do
			user = build(:user, :role => "anything")
			user.should be_invalid
		end
	end

	context "create user with a valid role" do
		it "should create a user with the given role" do
			user = build(:user, :role => "user")
			admin = build(:user, :role => "admin")
			librarian = build(:user, :role => "librarian")
			user.should be_valid
			admin.should be_valid
			librarian.should be_valid
		end
	end

  describe "scope role" do
  	let!(:user1) {create(:user)}
  	let!(:user2) {create(:user)}
  	let!(:user3) {create(:user)}
  	let!(:admin1) {create(:user, :role => "admin")}
  	let!(:admin2) {create(:user, :role => "admin")}
  	let!(:librarian1) {create(:user, :role => "librarian")}

  	it "should return the users with the given role" do
  		User.users.count.should == 3
  		User.admins.count.should == 2
  		User.librarians.count.should == 1
  	end

  	describe "check a user with the given role" do
  		context "user is checked with correct role" do
	  		it "should return true" do
	  			user1.user?.should be_true
	  			admin1.admin?.should be_true
	  			librarian1.librarian?.should be_true
	  		end
  		end

  		it "should return false" do
  			user1.admin?.should be_false
  			admin1.librarian?.should be_false
  			librarian1.user?.should be_false
  		end
  	end
	end

	describe "default locale" do

  	context "user created with no locale" do
			let!(:user1) {create(:user)}

  		it "should create the user with the en locale" do
  			user1.should be_valid
  			user1.locale.should == "en"
    	end
    end
	end
end