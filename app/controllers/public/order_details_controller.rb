class Public::OrderDetailsController < ApplicationController

  def index
    @order_detail_new = Order_detail.new
    @order_detail_new.save
    @order_details = Order_detail.all
  end

  def edit
    @order_detail = Order_detail.find(params[:id])
    @order_detail.update
  end



end
