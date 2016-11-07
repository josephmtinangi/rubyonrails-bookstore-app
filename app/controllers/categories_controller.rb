class CategoriesController < ApplicationController
  def index
    @page_title = 'Manage Categories'
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
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:notice] = 'Category updated successfully'
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def delete
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = 'Category deleted successfully'
    redirect_to categories_path
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
