class AuthorsController < ApplicationController
  def index
    @page_title = 'Manage authors'
    @authors = Author.all
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
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.update_attributes(author_params)
      flash[:notice] = 'Author updated successfully'
      redirect_to authors_path
    else
      render 'edit'
    end
  end

  def delete
    @author = Author.find(params[:id])
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    flash[:notice] = 'Author deleted successfully'
    redirect_to authors_path
  end

  private
  def author_params
    params.require(:author).permit(:first_name, :last_name)
  end
end
