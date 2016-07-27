class OutfitsController < ApplicationController
  before_action :create_new_outfit_with_items, only: [:create]

  def index
    @outfits = Outfit.all
    outfits_items = @outfits.map(&:outfits_items)
    image_urls = outfits_items.map { |outfit| outfit.map { |outfit_item| outfit_item.item.image.url } }
    render json: { outfits: @outfits, outfits_items: outfits_items, image_urls: image_urls }
  end

  def create
    if outfit.save
      render json: outfit, status: 201
    else
      outfit.errors.full_messages << 'Please try again.'
      render json: outfit.errors.full_messages, status: 422
    end
  end

  def show
    @outfit = Outfit.find(params[:id])
    outfits_item = @outfit.outfits_items
    image_urls = outfits_item.map { |outfit_item| outfit_item.item.image.url }
    render json: { outfit: @outfit, outfits_item: outfits_item, image_urls: image_urls }
  end

  def update
  end

  def destroy
    outfit = Outfit.find(params[:id])
    outfit.destroy
    outfit.delete_associated_outfits_items
  end

  private

  def outfit_params
    params.fetch(:outfit, {}).permit!
  end

  def create_new_outfit_with_items
    outfit = Outfit.new(user_id: outfit_params.to_h[:user_id])
    OutfitsItem.create(outfit: outfit, item_id: outfit_params.to_h[:accer_id])
    OutfitsItem.create(outfit: outfit, item_id: outfit_params.to_h[:tops_id])
    OutfitsItem.create(outfit: outfit, item_id: outfit_params.to_h[:bottoms_id])
    OutfitsItem.create(outfit: outfit, item_id: outfit_params.to_h[:foot_id])
  end
end
