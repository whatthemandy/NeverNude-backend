class ItemsController < ApplicationController

  def index
    @section = Section.find(params[:section_id])
    @items = @section.items
    render json: @items
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
    response.headers['image_path'] = "#{@item.image.url(:thumb)}"
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
