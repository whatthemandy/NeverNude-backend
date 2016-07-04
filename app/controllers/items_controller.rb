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
      # render error?
    end
  end

  def show
    @item = Item.find(params[:section][:item])
    thumb_image_url = @item.image.url(:thumb)
    med_image_url = @item.image.url(:medium)
    render json: { item: @item, thumb_image_url: thumb_image_url, med_image_url: med_image_url }
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
