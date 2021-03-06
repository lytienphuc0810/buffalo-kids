class PhotoRegistrationsController < ApplicationController
	before_filter :authenticate_user!, :except => [:home]

	def home 
		@books = Book.paginate(:page => params[:page])
	end

	def new
		book = Book.find_by_id(params[:book_id])

		if current_user.photo_registrations.map{ |a| a.book }.include? book
			#send some error message
		else
			pr = PhotoRegistration.create(:finish_date => Date.today + 3) 
			book.photo_registrations = book.photo_registrations <<  pr
			current_user.photo_registrations = current_user.photo_registrations << pr
			book.save
			current_user.save
		end

		redirect_to "/photo_registrations/home/1"
	end

	def index 
		if current_user.admin? || current_user.librarian?
			@photo_registrations = Book.find_by_id(params[:book_id]).photo_registrations.paginate(:page => params[:page])
			if @photo_registrations.empty?
				#error message
				redirect_to '/books/index/1'
			end
		else
			@photo_registrations = current_user.photo_registrations.paginate(:page => params[:page])
			if @photo_registrations.empty?
				#error message
				redirect_to '/photo_registrations/home/1'
			end
		end
	end

	def show
		@photo_registration = PhotoRegistration.find_by_id(params[:photo_registration_id])
		@book = @photo_registration.book
	end

	def delete
		photo_registration = PhotoRegistration.find_by_id(params[:photo_registration_id])
		photo_registration.destroy
		if current_user.admin? || current_user.librarian?
			if (photo_registration.book.photo_registrations.empty?)
				redirect_to '/books/index/1'
			else
				redirect_to "/photo_registrations/index/1?book_id=#{photo_registration.book.id}"
			end
		else
			if (current_user.photo_registrations.empty?)
				redirect_to '/photo_registrations/home/1'
			else
				redirect_to '/photo_registrations/index/1'
			end
		end
	end
end