class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @books = @category.books
  end

  def new
    @page_title = 'Add new Category'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category added successfully."
      redirect_to categories_path
    else
      render 'new'
    end
  end

  def edit
  end

  def delete
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
