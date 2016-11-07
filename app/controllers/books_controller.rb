class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @page_title = 'Add new book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book added successfully."
      redirect_to books_path
    else
      render 'new'
    end
  end

  def edit
  end

  def delete
  end

  private
  def book_params
    params.require(:book).permit(:title, :category_id, :author_id, :publisher_id, :isbn, :price, :buy, :format, :excerpt, :pages, :year)
  end
end
