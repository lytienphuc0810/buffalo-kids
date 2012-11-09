require 'spec_helper'

describe Book do
	it { should validate_uniqueness_of :title }
	it { should validate_uniqueness_of :book_code }
	it { should validate_presence_of :title }
	it { should validate_presence_of :book_code }

	it { should have_many :book_instances }
	it { should have_many :book_reservations }
	it { should have_many :photo_registrations }

	context "create book without an image url" do
		it "should create book with the defaut image url" do
			book = build(:book)
			book.should be_valid
			book.image_url.should == "/assets/no_photo.png"
		end
	end

	context "create a book with an image url" do
		it "should create the book" do
			book = build(:book, :image_url => "http://vnexpress.net/Files/Folder/00/9b/ann-michelle1.jpg")
			book.should be_valid
			book.image_url.should == "http://vnexpress.net/Files/Folder/00/9b/ann-michelle1.jpg"
		end
	end

	describe "free_instance_to_get" do

		let!(:book_instance1) { create(:book_instance) }
		let!(:book_instance2) { create(:book_instance) }
		let!(:book_instance3) { create(:book_instance) }
		let!(:book1){ create(:book, :book_instances => [book_instance1]) }
		let!(:book2){ create(:book, :book_instances => [book_instance2]) }
		let!(:book_reservation) { create(:book_reservation, :book_instance => book_instance1) }
		let!(:photo_registration) { create(:photo_registration, :book_instance => book_instance2) }

		context "there is no free book instance to get" do
			it "should return nil" do
				book1.free_instance_to_get.should be_nil
				book2.free_instance_to_get.should be_nil
			end
		end

		context "there is free book instance to get" do
			let!(:book3){ create(:book, :book_instances => [book_instance3]) }
			it "should return the instance" do
				book3.free_instance_to_get.should == book_instance3
			end
		end
	end
end