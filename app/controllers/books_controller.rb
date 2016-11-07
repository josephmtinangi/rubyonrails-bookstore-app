class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @page_title = 'Add book'
    @book = Book.new
    @category = Category.new
    @author = Author.new
    @publisher = Publisher.new
  end

  def edit
  end

  def delete
  end
end
