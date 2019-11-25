class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    id = params[:id]
    @collection = Collection.find(id)
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new
    @collection.name = params[:collection][:name]
    @collection.url = params[:collection][:url]
    @collection.description = params[:collection][:description]
    @collection.user_id = 1
    @collection.save
    if @collection.save
      redirect_to collections_path
    else
      render new 
    end
  end


  def edit
    @collection = Collection.find(params[:id])
  end

  def update
    @collection = Collection.find(params[:id])
    if @collection.update(collection_params)
      redirect_to collection_path
    else
      render 'edit'
    end
  end

  def destroy
    Collection.find(params[:id]).destroy
    redirect_to collections_url
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :url, :description)
    
  end
end
