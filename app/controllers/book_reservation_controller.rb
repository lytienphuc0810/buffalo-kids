class BookReservationController < ApplicationController
	before_filter :authenticate_user!
	def new
		book = Book.find_by_id(params[:book_id])
		book_instance = book.free_instance_to_reserve
		book_instance.book_reservations = book_instance.book_reservations << BookReservation.create(:start_date => Date.today, :due_date => Date.today + 3) 
		book_instance.save
		redirect_to "/"
	end
end
