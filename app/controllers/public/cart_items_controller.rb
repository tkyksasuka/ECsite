class Public::CartItemsController < ApplicationController
  
  def index
    @cart_items = Cart_item.all
    cart_item = Cart_item.find(params[:id])
    cart_item.destroy
  end
  
  
  
end
