class Api::OrdersController < ApplicationController
  def create
    if current_user
      @order = Order.new(
      user_id: params[:user_id], 
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: subtotal + tax
      )
      render "show.json.jb"
    else
      render json: {message: "you can't do that"}
    end
  end
end
