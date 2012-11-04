class BookManagementsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @vbooks = Book.paginate(:page => params[:page])
  end
  
  def show
	 @sbook = Book.find_by_id(params[:book_id])
  end

  def edit
	 @ebook = Book.find_by_id(params[:book_id])
  end

  def new
   
  end

  def delete
	 book = Book.find_by_id(params[:sbook_id])
	 book.delete
	 redirect_to '/book_managements/index/1'
  end
  
end
