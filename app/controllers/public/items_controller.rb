class Public::ItemsController < ApplicationController

  def index
    @items = Item.all
    @item = Item.find(params[:id])
  end

  def show
    @item = Item.find(params[:id])
    @items = Item.all
    @item_new = Item.new
    @item_new.save
    render :index
    @items = Item.all
  end



end
