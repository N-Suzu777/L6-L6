class CartsController < ApplicationController
  def show
    current_cart
    @cartitems = Cartitem.all
  end
end
