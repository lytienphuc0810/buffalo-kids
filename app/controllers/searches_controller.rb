class SearchesController < ApplicationController
	def book_search_reservation
		@books = Book.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
		if @books.empty?
			# error page
		end
	end

	def book_search_registration
		@books = Book.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
		if @books.empty?
			# error page
		end
	end

	def book_search
		@books = Book.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
		if @books.empty?
			# error page
		end
	end

	def user_search
		@users = User.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
		if @users.empty?
			# error page
		end
	end
end