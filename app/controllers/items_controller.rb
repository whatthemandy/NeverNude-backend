class ItemsController < ApplicationController

  def index
    @items = Item.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @items }
      format.json { render json: @items }
    end
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render json: @item
    else
      # ?
    end
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
