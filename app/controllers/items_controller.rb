class ItemsController < ApplicationController

  def index
    @section = Section.find(params[:section_id])
    @items = @section.items
    thumb_image_urls = @items.map { |item| item.image.url(:thumb) }
    med_image_urls = @items.map { |item| item.image.url(:medium) }
    # response.headers['image_path'] = "#{@items[0].image.url(:thumb)}"
    render json: { items: @items, thumb_image_urls: thumb_image_urls, med_image_urls: med_image_urls }
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
