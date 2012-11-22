require 'spec_helper'

describe "librarian page" do
	let!(:book_reservation1) { create(:book_reservation) }
	let!(:book_reservation2) { create(:book_reservation) }
	let!(:photo_registration1) { create(:photo_registration) }
	let!(:photo_registration2) { create(:photo_registration) }
	let!(:book_instance1) { create(:book_instance, :book_reservation => book_reservation1) }
	let!(:book_instance2) { create(:book_instance, :book_reservation => book_reservation2) }
	let!(:book_instance3) { create(:book_instance, :photo_registration => photo_registration1) }
	let!(:book_instance4) { create(:book_instance, :photo_registration => photo_registration2) }
	let!(:book1) { create(:book, :author => "abcdef", :book_instances => [book_instance1, book_instance4]) }
	let!(:book2) { create(:book, :author => "abcdef", :book_instances => [book_instance2]) }
	let!(:book3) { create(:book, :author => "abcdef", :book_instances => [book_instance3]) }
	let!(:librarian) { create(:librarian) }

	before do
		visit root_path
		fill_in "Email", :with => librarian.email
		fill_in "Password", :with => "123456"
		click_button "Submit"
	end

	context "BOOKS" do
		context "index" do
			it "should display all the books" do
				page.current_path.should == "/books/index/1"
				page.should have_link "CREATE"
				page.should have_link book1.title.truncate(15).upcase
				page.should have_link book2.title.truncate(15).upcase
				page.should have_link book3.title.truncate(15).upcase
			end

			context "book reservations" do
				before do
					click_on "Reservations"
				end

				it "should display all book reservations of that book" do
					page.current_path.should == "/book_reservations/index/1"
					URI.parse(current_url).query = "book_id=#{book1.id}"
					page.should have_link book1.title.truncate(15).upcase
					page.should have_link "Delete it"
				end

				context "show book reservation" do
					before do
						click_on book1.title.truncate(15).upcase
					end

					it "should display detailed information of the book reservation" do
						page.should have_content book1.title.truncate(15).upcase
						page.should have_link "Delete"
						page.should have_content "Start date"
						page.should have_content "Due date"
					end
				end
			end

			context "photo registrations" do
				before do
					click_on "Photo Registrations"
				end

				it "should display all book reservations of that book" do
					page.current_path.should == "/photo_registrations/index/1"
					URI.parse(current_url).query = "book_id=#{book1.id}"
					page.should have_link book1.title.truncate(15).upcase
					page.should have_link "Delete it"
				end

				context "show photo registration" do
					before do
						click_on book1.title.truncate(15).upcase
					end

					it "should display detailed information of the photo registration" do
						page.should have_content book1.title.truncate(15).upcase
						page.should have_link "Delete"
						page.should have_content "Due date"
					end
				end
			end
		end

		context "show" do
			before do 
				click_on book1.title.truncate(15).upcase
			end

			it "should display the detailed information of the book" do
				page.should have_content book1.title.upcase
				page.should have_link "CREATE"
				page.should have_link "BOOKS"
				page.should have_link book1.title.truncate(20).upcase
				page.should have_link "List all instances of this book"
				page.should have_link "Add an instance to this book"
				page.should have_link "Edit"
				page.should have_link "Delete"
			end

			context "book instance" do
				context "index" do
					before do
						click_on "List all instances of this book"
					end
					it "should display all the book instance" do
						page.should have_content book_instance1.book_instance_code
						page.should have_content "Code: " + book_instance1.book_instance_code
						page.should have_link "Edit"
						page.should have_link "Delete"
					end
				end

				context "create" do
					before do 
						click_on "Add an instance to this book"
					end

					context "successfully add the instance" do
						before do 
							fill_in "book_instance_code", :with => "ABC123"
							click_button "Create"
						end

						it "should successfully create the book instance" do
							page.current_path.should == "/book_instances/index/#{book1.id}/1"
							page.should have_content "ABC123"
						end
					end

					context "unsuccessfully add the instance" do
						before do 
							click_button "Create"
						end
						it "should unsuccessfully create the book instance" do
							page.should have_content "error"
						end
					end
				end
			end
		end

		context "create" do
			before do
				click_on "CREATE"
			end

			context "successfully create the book" do
				before do
					fill_in "title", :with => "TITLE ABC"
					fill_in "book_code", :with => "ABC2"
					click_button "Create"
				end
				it "should create the book" do
					page.current_path.should == "/books/show/#{Book.last.id}"
					page.should have_content "TITLE ABC"
				end
			end

			context "unsuccessfully create the book" do
				before do
					fill_in "title", :with => "TITLE ABC"
					click_button "Create"
				end
				it "should not create the book" do
					page.should have_content "error"
				end
			end
		end
	end

	context "NOTICES" do
		before do
			click_on "NOTICES"
		end

		context "Create" do
			before do
				click_on "CREATE"
			end
			context "successfully create the notice" do
				before do
					fill_in "title", :with => "TITLE ABC"
					fill_in "content", :with => "ABC2"
					click_button "Create"
				end
				it "should create the notice" do
					page.current_path.should == "/notices/show/#{Notice.last.id}"
					page.should have_content "TITLE ABC"
				end
			end

			context "unsuccessfully create the notice" do
				before do
					fill_in "title", :with => "TITLE ABC"
					click_button "Create"
				end
				it "should not create the notice" do
					page.should have_content "error"
				end
			end
		end
	end
end