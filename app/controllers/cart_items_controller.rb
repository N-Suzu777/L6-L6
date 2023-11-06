class CartItemsController < ApplicationController
  def new
    current_cart
    @cartitem = Cartitem.new
    @Citem = Product.find(params[:id])
  end

  def create
    #p_idとc_idの受け取り方わからない
    @cartitem = Cartitem.new(qty: params[:qty], product_id: @Citem, cart_id: current_cart)
    if @cartitem.save
      redirect_to root_path
    else
      render new
    end
  end

  def destroy
    cartitem = Cartitem.find(params[:id])
    cartitem.destroy
    redirect_to carts_show_path
  end
end
