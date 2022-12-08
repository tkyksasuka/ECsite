class Public::CustomersController < ApplicationController

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
  end

  def unsubscribe
  end

  def withdraw
  end



end
