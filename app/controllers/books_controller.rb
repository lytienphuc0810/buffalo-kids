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

  def update
    @book = Book.find_by_id(params[:book_id])
    if(@book.update_attributes(params[:book]))
      redirect_to "/books/show/#{@book.id}"
    else
      render action: "edit"
    end
  end

  def new
    @book = Book.new
  end

  def create 
    @book = Book.new(params[:book])
    if(@book.save)
      redirect_to "/books/show/#{@book.id}"
    else
      render action: "new"
    end
  end

  def delete
	 book = Book.find_by_id(params[:book_id])
	 book.delete
	 redirect_to '/books/index/1'
  end
end
