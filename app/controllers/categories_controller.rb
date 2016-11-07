class CategoriesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @page_title = 'Add new Category'
    @category = Category.new    
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
