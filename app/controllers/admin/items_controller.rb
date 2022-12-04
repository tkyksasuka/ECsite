class Admin::ItemsController < ApplicationController

  def index
    @items = Item.page(params[:page])
  end

  def new
    @new_item = Item.new
  end

  def create
    @new_item = Item.new
    if @new_item.save
       redirect_to admin_items_path
    else
      @new_item = Item.new
      render :new
    end
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
