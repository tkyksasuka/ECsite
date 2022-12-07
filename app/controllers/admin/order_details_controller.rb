class Admin::OrderDetailsController < ApplicationController

  def edit
    @order_detail = Order_detail.find(params[:id])
    if@order_detail.update
      redirect_to admin_order_path
    else
      @order_detail = Order_detail.find(params[:id])
      render :edit
    end
      
  end
  
end
