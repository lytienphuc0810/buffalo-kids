class SearchesController < ApplicationController
	def book_search_reservation
		@books = Book.search{ fulltext params[:param] }.results.paginate(params[:page])
	end

	def book_search_reservation
		@books = Book.search{ fulltext params[:param] }.results
	end
end