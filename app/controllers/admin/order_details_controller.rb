class Admin::OrderDetailsController < ApplicationController

  def edit
    @order_detail = Order_detail.find(params[:id])
  end

  def update
    @order_detail = Order_detail.find(params[:id])
    @order_detail.update
    redirect_to admin_order_path
  end

end

