class SearchesController < ApplicationController
	before_filter :authenticate_user!

	def search
		render "searches/#{params[:type]}"
	end

	def book_advance_search
		case current_user.role
			when "user"
				@books = Book.my_search(params).paginate(:page => params[:page], :per_page => 12)
				if params[:reservation] == "true"
					render "searches/book_search_reservation"
				else
					render "searches/book_search_registration"
				end
			when "librarian"
				@books = Book.my_search(params).paginate(:page => params[:page], :per_page => 12)
				render "searches/book_search"
			else
				redirect_to root_path
		end
	end

	def book_search_reservation
		Book.reindex
		@books = Book.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
	end

	def book_search_registration
		Book.reindex
		@books = Book.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
	end

	def book_search
		Book.reindex
		@books = Book.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
	end

	def user_search
		User.reindex
		@users = User.search{ fulltext params[:param] }.results.paginate(:page => params[:page], :per_page => 12)
	end
end