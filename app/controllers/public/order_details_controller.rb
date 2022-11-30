class Public::OrderDetailsController < ApplicationController

  def index
    @order_detail_new = Order_detail.new
    @order_detail_new.save
    @order_details = Order_detail.all
  end

  def edit
  end



end
