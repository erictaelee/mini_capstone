class Api::OrdersController < ApplicationController
  
  def index
    @orders = current_user.orders
    render "index.json.jb"
  end
  
  def create
    if current_user 
      @order = Order.new(
      user_id: current_user.id, 
      product_id: params[:product_id],
      quantity: params[:quantity],
      # subtotal: params[:subtotal],
      # tax: params[:tax],
      # total: "(#{subtotal} + #{tax}) * "
      )
      @order.save!
      render "show.json.jb"
    else
      render json: {message: "you can't do that"}
    end
  end
end
