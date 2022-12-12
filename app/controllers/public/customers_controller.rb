class Public::CustomersController < ApplicationController

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def updated
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customer_path
  end

  def unsubscribe
    @customer = Customer.find(params[:id])
  end

  def withdraw
    @customer = Customer.find(params[:id])
    @customer.update(is_deleted: false)
    reset_session
    redirect_to root_path

  end



end
