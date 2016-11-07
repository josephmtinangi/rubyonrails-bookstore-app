class PublishersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @page_title = 'Add new Publsiher'
    @publisher = Publisher.new
  end

  def edit
  end

  def delete
  end

  private
  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
