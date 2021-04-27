class Api::CartedProductsController < ApplicationController
  def create
    @cp = CartedProduct.new(
      user_id: current_user.id, 
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted"
    )
    @cp.save!
    render "show.json.jb"
  end
end
