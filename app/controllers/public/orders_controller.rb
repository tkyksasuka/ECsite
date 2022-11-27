class Public::OrdersController < ApplicationController
  
  def new
    @order_new = Order.new
    @order_new.save
    
  end
  
  def complete
  end
  
  def index
  end
  
  def show 
  end
  
  
end
