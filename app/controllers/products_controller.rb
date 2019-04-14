class ProductsController < ApplicationController
  helper_method :cart

  def add_to_cart
    # Get the item from the path
    @item = params[:product]
    @cart = cart

    # Load the cart from the session, or create a new empty cart.
    cart << @item

    redirect_to "/"
  end

  def index
    @cart = []
    # cart << @item
    @cart = cart
    # render "index"
  end

  def cart
    session[:cart] ||= []
  end
end
