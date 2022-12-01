class Public::OrdersController < ApplicationController

  def new
    @order_new = Order.new
    @order_new.save

  end

  def complete
  end

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @order_details = Order_detail.all
  end


end
