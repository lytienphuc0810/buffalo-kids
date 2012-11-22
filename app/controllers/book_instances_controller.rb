class BookInstancesController < ApplicationController
	def index
		@book = Book.find(params[:book_id])
		if @book.nil?
			# send error message
		else
			@book_instances = @book.book_instances.paginate(:page => params[:page])
			if @book_instances.empty?
				# error message 
				redirect_to "/books/show/#{params[:book_id]}"
			end
		end
	end

	def new
		@book = Book.find(params[:book_id])
		@book_instance = BookInstance.new(params[:book_instance])
		if @book.nil?
			# send error message
		end
	end

	def create 
		@book = Book.find(params[:book_id])
		@book_instance = BookInstance.create(params[:book_instance])
		if @book_instance.invalid?
			render :action => "new"
		else
			@book.book_instances = @book.book_instances << @book_instance
			if @book.save
				redirect_to "/book_instances/index/#{@book.id}/1"
			else
				# send error message
			end
		end
	end

	def edit 
		@book_instance = BookInstance.find(params[:book_instance_id])
		if @book_instance.nil?
			# error message
		end
	end

	def update
		book_instance = BookInstance.find(params[:book_instance_id])
		if book_instance.nil?
			# send error message
		else
			if book_instance.update_attributes(params[:book_instance])
				redirect_to "/book_instances/index/#{book_instance.book.id}/1"
			else
				render :action => "edit"
			end
		end
	end

	def delete 
		book_instance = BookInstance.find(params[:book_instance_id])
		if book_instance.nil?
			# send error message
		else
			book_id = book_instance.book.id
			book_instance.destroy
			redirect_to "/book_instances/index/#{book_id}/1"
		end
	end
end
