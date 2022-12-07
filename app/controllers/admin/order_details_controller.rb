class Admin::OrderDetailsController < ApplicationController

  def update
    @order_detail = Order_detail.find(params[:id])
    @order_detail.update
    redirect_to admin_order_path
  end

end
