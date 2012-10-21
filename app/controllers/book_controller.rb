class BookController < ApplicationController
	before_filter :authenticate_user!
	def index
		@book_array = Book.all
	end
end
