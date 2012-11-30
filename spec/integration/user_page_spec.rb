require 'spec_helper'

describe "user page" do
	let!(:book_reservation1) { create(:book_reservation) }
	let!(:book_reservation2) { create(:book_reservation) }
	let!(:photo_registration1) { create(:photo_registration) }
	let!(:photo_registration2) { create(:photo_registration) }
	let!(:book_instance1) { create(:book_instance, :book_reservation => book_reservation1) }
	let!(:book_instance2) { create(:book_instance, :book_reservation => book_reservation2) }
	let!(:book_instance3) { create(:book_instance, :photo_registration => photo_registration1) }
	let!(:book_instance4) { create(:book_instance, :photo_registration => photo_registration2) }
	let!(:book1) { create(:book, :author => "abcdef", :book_instances => [book_instance1]) }
	let!(:book2) { create(:book, :author => "abcdef", :book_instances => [book_instance2]) }
	let!(:book3) { create(:book, :author => "abcdef", :book_instances => [book_instance3]) }
	let!(:book4) { create(:book, :author => "abcdef", :book_instances => [book_instance4]) }
	let!(:user) { create(:confirmed_user, :book_reservations => [book_reservation1, book_reservation2], :photo_registrations => [photo_registration1, photo_registration2]) }

	let!(:notice1) { create (:notice) }
	let!(:notice2) { create (:notice) }

	context "user logged in" do 
		before do
			visit root_path
			fill_in "Email", :with => user.email
			fill_in "Password", :with => "123456"
			click_button "Submit"
		end

		it "should redirect the user to book reservation page and display the layout correctly" do
			page.should have_link "BOOKS"
			page.should have_link "NOTICES"
			page.should have_link "PHOTO"
			page.should have_link "FAQ"
			page.should have_link "CONTACT"
			page.current_path.should == "/book_reservations/home/1"
		end

		context "Book Reservation" do
			context "book reservations home" do
				it "should display all the book" do
					page.current_path.should == "/book_reservations/home/1"
					page.should have_link "BOOKS"
					page.should have_link "RESERVATIONS"
					page.should have_content book1.title.upcase
					page.should have_content book2.title.upcase
					page.should have_content book3.title.upcase
					page.should have_content book4.title.upcase
				end
			end

			context "book reservations index" do
				before do
					click_on "RESERVATIONS"
				end

				it "should display all the book reservation of the user" do
					page.current_path.should == "/book_reservations/index/1"
					page.should have_link "BOOKS"
					page.should have_link "RESERVATIONS"
					page.should have_content book1.title.upcase
					page.should have_link book1.title.truncate(25).upcase
					page.should have_link "Delete it"
				end
			end

			context "book reservations show" do
				before do
					click_on "RESERVATIONS"
					click_on book1.title.truncate(25).upcase
				end

				it "should display detailed content of the book reservation" do
					page.current_path.should == "/book_reservations/show/#{book_reservation1.id}"
					page.should have_link "BOOKS"
					page.should have_link "RESERVATIONS"
					page.should have_link  book1.title.upcase
					page.should have_content book1.title.upcase
					page.should have_content book1.author
					page.should have_content book_reservation1.start_date.to_s
					page.should have_content book_reservation1.due_date.to_s
					page.should have_link "Delete it"
				end

				context "delete a book reservation" do
					before do
						click_on 	"Delete it"
					end
					it "should redirect to book reservation index" do
						page.driver.browser.switch_to.alert.accept
						page.current_path.should == "/book_reservations/index/1"
					end
				end
			end
		end

		context "Photo Reservation" do
			before do
				click_on "PHOTO"
			end

			context "photo registrations home" do
				it "should display all the book" do
					page.current_path.should == "/photo_registrations/home/1"
					page.should have_link "BOOKS"
					page.should have_link "PHOTO REGISTRATIONS"
					page.should have_content book1.title.upcase
					page.should have_content book2.title.upcase
					page.should have_content book3.title.upcase
					page.should have_content book4.title.upcase
				end
			end

			context "photo registrations index" do
				before do
					click_on "PHOTO REGISTRATIONS"
				end

				it "should display all the photo registration of the user" do
					page.current_path.should == "/photo_registrations/index/1"
					page.should have_link "BOOKS"
					page.should have_link "PHOTO REGISTRATIONS"
					page.should have_content book3.title.upcase
					page.should have_link book3.title.truncate(25).upcase
					page.should have_link "Delete it"
				end
			end

			context "photo registrations show" do
				before do
					click_on "PHOTO REGISTRATIONS"
					click_on book3.title.truncate(25).upcase
				end

				it "should display detailed content of the photo registration" do
					page.current_path.should == "/photo_registrations/show/#{photo_registration1.id}"
					page.should have_link "BOOKS"
					page.should have_link "PHOTO REGISTRATIONS"
					page.should have_link  book3.title.upcase
					page.should have_content book3.title.upcase
					page.should have_content book3.author
					page.should have_content photo_registration1.finish_date.to_s
					page.should have_link "Delete it"
				end

				context "delete a photo registration" do
					before do
						click_on 	"Delete it"
					end
					it "should redirect to photo registration index" do
						page.driver.browser.switch_to.alert.accept
						page.current_path.should == "/photo_registrations/index/1"
					end
				end
			end
		end

		context "Notice" do
			before do
				click_on "NOTICES"
			end

			it "should display all the notices" do
				page.should have_link "NOTICES"
				page.should have_content notice1.title.truncate(20).upcase
				page.should have_content notice1.short_content
			end
		end
	end
end