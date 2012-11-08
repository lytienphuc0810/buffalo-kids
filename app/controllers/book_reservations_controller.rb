class BookReservationsController < ApplicationController
	before_filter :authenticate_user!
	def home
		@books = Book.paginate(:page => params[:page])
	end
	
	def new
		book = Book.find_by_id(params[:book_id])

		if current_user.book_reservations.map{ |a| a.book }.include? book
			#send some error message
		else
			book_instance = book.free_instance_to_get
			if !book_instance.nil?
				br = BookReservation.create(:start_date => Date.today, :due_date => Date.today + 3) 
				book_instance.book_reservation = br
				current_user.book_reservations = current_user.book_reservations << br
				book_instance.save
				current_user.save
			else
			#send some error message
			end
		end
		
		redirect_to "/book_reservations/home/1"
	end

	def index
		if current_user.admin? || current_user.librarian?
			@book_reservations = Book.find_by_id(params[:book_id]).book_reservations.paginate(:page => params[:page])
			if @book_reservations.empty?
				#error message
				redirect_to '/books/index/1'
			end
		else
			@book_reservations = current_user.book_reservations.paginate(:page => params[:page])
			if @book_reservations.empty?
				#error message
				redirect_to '/book_reservations/home/1'
			end
		end
	end

	def show
		@book_reservation = BookReservation.find_by_id(params[:book_reservation_id])
		@book = @book_reservation.book
	end

	def delete
		book_reservation = BookReservation.find_by_id(params[:book_reservation_id])
		book_reservation.destroy
		if current_user.admin? || current_user.librarian?
			if (book_reservation.book.book_reservations.nil?)
				redirect_to '/books/index/1'
			else
				redirect_to "/book_reservations/index/1?book_id=#{book_reservation.book.id}"
			end
		else
			if (current_user.book_reservations.nil?)
				redirect_to '/books/index/1'
			else
				redirect_to '/book_reservations/index/1'
			end
		end
	end
end
