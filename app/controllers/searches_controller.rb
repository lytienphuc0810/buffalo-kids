class SearchesController < ApplicationController
	def book_search_reservation
		Book.reindex
		@books = Book.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
		if @books.empty?
			# error page
		end
	end

	def book_search_registration
		Book.reindex
		@books = Book.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
		if @books.empty?
			# error page
		end
	end

	def book_search
		Book.reindex
		@books = Book.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
		if @books.empty?
			# error page
		end
	end

	def user_search
		Book.reindex
		@users = User.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
		if @users.empty?
			# error page
		end
	end
end