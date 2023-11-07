class CartsController < ApplicationController
  def show
    current_cart
    @cartitems = Cartitem.where(cart_id: session[:cart_id])
  end
end
