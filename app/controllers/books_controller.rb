class BooksController < ApplicationController
	# phan cua Viet
	before_filter :authenticate_user!
  def index
    @books = Book.paginate(:page => params[:page])
  end
  
  def show
	 @book = Book.find_by_id(params[:book_id])
  end

  def edit
	 @book = Book.find_by_id(params[:book_id])
  end

  def new
  end

  def create 
    book = Book.create(params[:book])
    if(book.nil?)
      #send some error message
    else
      redirect_to "/books/show/#{book.id}"
    end
  end

  def delete
	 book = Book.find_by_id(params[:book_id])
	 book.destroy
	 redirect_to '/books/index/1'
  end
end
