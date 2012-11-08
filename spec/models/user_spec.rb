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
end