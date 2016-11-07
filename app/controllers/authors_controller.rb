class AuthorsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @page_title = 'Add new Author'
    @author = Author.new
  end

  def edit
  end

  def delete
  end

  private
  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end
end
