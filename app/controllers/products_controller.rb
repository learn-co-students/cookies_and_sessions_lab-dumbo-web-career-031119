class ProductsController < ApplicationController
    def index
    end

    def add
        cart << params.permit(:product)[:product]
        render :index
    end

end
