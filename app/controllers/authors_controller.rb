class AuthorsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @page_title = 'Add new Author'
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = "Author added successfully"
      redirect_to authors_path
    else
      render 'new'
    end
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
