class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new(list_parames)
    list.save
    redirect_to '/top'
  end
  
  def index
  end

  def show
  end

  def edit
  end

  private
  def list_parames
    params.require(:list).permit(:title, :body)
  end
end