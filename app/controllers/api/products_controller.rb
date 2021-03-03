class Api::ProductsController < ApplicationController
  def index
    @product = Product.all
    render "index.json.jb"
   
  end

  def show
    id = params[:id]
    @product = Product.find_by(id: params[:id])
    p @product
    render "show.json.jb"
  end

  # def create
  #   @product = Product.new(
  #     name: params[:the_name],
  #     price: params[:the_price]
      
  #   )
  #   @product.save
  #   render "show.json.jb"
  # end

  def update 
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.image_url = params[:image_url]
    @product.save
    render "show.json.jb"
  end
end
