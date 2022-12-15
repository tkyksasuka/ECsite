class Public::CartItemsController < ApplicationController

  def index
    @cart_items = CartItem.all
  end

  def show
     @item = Item.find(params[:id])
  end

  def create
     @cart_item = CartItem.new(cart_item_params)
     @cart_item.customer_id = current_customer
     @cart_item.save
     redirect_to cart_items_path
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end

  def destroy_all
    CartItem.destroy_all
    redirect_to items_path
  end

  def update
    @cart_item = Cart_item.find(params[:id])
    @cart_item.update(cart_item_params)
    redirect_to cart_items_path
  end


  def cart_item_params
    params.require(:cart_item).permit(:item_id, :amount)
  end

end
