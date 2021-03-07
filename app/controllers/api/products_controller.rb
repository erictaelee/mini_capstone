class Api::ProductsController < ApplicationController
  def index

# Change your products index action to make the sort, filter, and search buttons work in the new version of the frontend:

    # if params[:sort]
    #   @index = Product.where("price LIKE ?", "%#{params[:sort]}"
    # else
      @products = Product.all
    # end

    
    render "index.json.jb"
   
  end

  def show
    id = params[:id]
    @product = Product.find_by(id: params[:id])
    p @product
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: {message: @product.errors.full_messages}
    end
  end

  def update 
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.image_url = params[:image_url]
    @product.save
    render "show.json.jb"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "product has been deleted"}
    
  end
  
end
