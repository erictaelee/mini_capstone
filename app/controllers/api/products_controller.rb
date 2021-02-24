class Api::ProductsController < ApplicationController
  def product_action
    @message = "hellllooo"
    render "product.json.jb"
  end
end
