class ItemController < ApplicationController

  def index
    @items = Item.all
  end

  def create
    @item = Item.create(item_params)
    # if item.save
    # else
    # end
  end

  def show
    @item = Item.find(params[:section][:item])
  end

  def destroy
    item = Item.find(params[:section][:item])
    item.destroy
  end

  private
  def item_params
    params.require(:item).permit(:user_id, :section_id, :image)
  end

end
