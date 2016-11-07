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
end
