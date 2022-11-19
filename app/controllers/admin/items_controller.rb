class Admin::ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @new_item = Item.new(item_params)
    @new_item.save
    render :index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    @item.update(item_params)
    red
  end

end
