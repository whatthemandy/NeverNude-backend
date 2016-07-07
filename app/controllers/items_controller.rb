class ItemsController < ApplicationController

  def index
    @section = Section.find(params[:section_id])
    @items = @section.items
    thumb_image_urls = @items.map { |item| item.image.url(:thumb) }
    sm_image_urls = @items.map { |item| item.image.url(:small) }
    med_image_urls = @items.map { |item| item.image.url(:medium) }
    lrg_image_urls = @items.map { |item| item.image.url(:large) }
    # response.headers['image_path'] = "#{@items[0].image.url(:thumb)}"
    render json: { items: @items, thumb_image_urls: thumb_image_urls, sm_image_urls: sm_image_urls, med_image_urls: med_image_urls, lrg_image_urls: lrg_image_urls }
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render json: @item
    else
      @item.errors.full_messages << "Please try again."
      render json: @item.errors.full_messages, status: 422
    end
  end

  # def show
  #   @item = Item.find(params[:id])
  #   tags = @item.tags.map { |tag| tag.name }
  #   thumb_image_url = @item.image.url(:thumb)
  #   med_image_url = @item.image.url(:medium)
  #   render json: { item: @item, thumb_image_url: thumb_image_url, med_image_url: med_image_url, tags: tags }
  # end

  def destroy
    section = Section.find(params[:section_id])
    item = section.items.find(params[:id])
    item.destroy
    item.delete_associated_outfits_and_tags
    render nothing: true, status: 200
  end

  private
  def item_params
    params.fetch(:item, {}).permit(:user_id, :section_id, :image)
    # params.require(:item).permit(:user_id, :section_id, :image)
  end

end
