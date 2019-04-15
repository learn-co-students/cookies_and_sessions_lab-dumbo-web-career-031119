class ProductsController < ApplicationController

  def index
  end

  def add_to_cart
    cart << params[:item][:product]
    render"index"
  end

end
