class PublishersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @page_title = 'Add new Publsiher'
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:notice] = "Publisher added successfully."
      redirect_to publishers_path
    else
      render 'new'
    end
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
