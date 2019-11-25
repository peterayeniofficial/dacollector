class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    id = params[:id]
    @collection = Collection.find(id)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
