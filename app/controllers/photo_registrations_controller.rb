class PhotoRegistrationsController < ApplicationController
	before_filter :authenticate_user!
	def home 
		@books = Book.paginate(:page => params[:page])
	end

	def new
		book = Book.find_by_id(params[:book_id])

		if current_user.photo_registrations.map{ |a| a.book }.include? book
			#send some error message
		else
			book_instance = book.free_instance_to_get
			if !book_instance.nil?
				pr = PhotoRegistration.create(:finish_date => Date.today + 3) 
				book_instance.photo_registration =  pr
				current_user.photo_registrations = current_user.photo_registrations << pr
				book_instance.save
				current_user.save
			else
				#send some error message
			end
		end

		redirect_to "/photo_registrations/home/1"
	end

	def index 
		@photo_registrations = current_user.photo_registrations.paginate(:page => params[:page])
		if @photo_registrations.empty?
			#error message
			redirect_to '/photo_registrations/home/1'
		end
	end

	def show
		@photo_registration = PhotoRegistration.find_by_id(params[:photo_registration_id])
		@book = @photo_registration.book
	end

	def delete
		photo_registration = PhotoRegistration.find_by_id(params[:photo_registration_id])
		photo_registration.destroy
		redirect_to '/photo_registrations/index/1'
	end
end