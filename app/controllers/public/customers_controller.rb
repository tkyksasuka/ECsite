class Public::CustomersController < ApplicationController

  def show
    @custmer = Custmer.find(params[:id])
  end

  def edit
    @custmer = Custmer.find(params[:id])
    @custmer.update(custmer_params)
  end

  def unsubscribe
  end





end
