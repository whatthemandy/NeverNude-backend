class ItemsController < ApplicationController
  def index
    @section = Section.find(params[:section_id])
    @items = @section.items
    tags = []
    @items.all.each{|item| tags << item.tags}
    med_image_urls = @items.map { |item| item.image.url(:medium) }
    lrg_image_urls = @items.map { |item| item.image.url(:large) }
    render json: { items: @items, med_image_urls: med_image_urls, lrg_image_urls: lrg_image_urls, tags: tags }
  end

  def create
    image = StringIO.new(Base64.decode64(item_params.to_h[:image]))
    @item = Item.new(user_id: item_params.to_h[:user_id], section_id: item_params.to_h[:section_id], image: image)
    if @item.save
      render json: @item, status: 201
    else
      @item.errors.full_messages << "Please try again."
      render json: @item.errors.full_messages, status: 422
    end
  end

  def destroy
    section = Section.find(params[:section_id])
    item = section.items.find(params[:id])
    item.destroy
    item.delete_associated_outfits_and_tags
    render nothing: true, status: 200
  end

  private

  def item_params
    params.fetch(:item, {}).permit!
  end
end
