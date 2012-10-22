class BookReservationsController < ApplicationController
	before_filter :authenticate_user!
	def new
		book = Book.find_by_id(params[:book_id])
		book_instance = book.free_instance_to_get
		if !book_instance.nil?
			book_instance.book_reservations = book_instance.book_reservations << BookReservation.create(:start_date => Date.today, :due_date => Date.today + 3) 
			book_instance.save
		else
			#send some error message
		end
		redirect_to "/"
	end

	def index 
		@book_reservations = BookReservation.all
		if @book_reservations.empty?
			#error message
			redirect_to '/'
		end
	end

	def show
		@book_reservation = BookReservation.find_by_id(params[:book_reservation_id])
		@book = @book_reservation.book_instance.book
	end

	def delete
		book_reservation = BookReservation.find_by_id(params[:book_reservation_id])
		book_reservation.delete
		redirect_to '/book_reservations/index'
	end
end
