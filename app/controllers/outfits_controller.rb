class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
    outfits_items = @outfits.map { |outfit| outfit.outfits_items }
    image_urls = outfits_items.map {|outfit| outfit.map {|outfit_item| outfit_item.item.image.url } }
    render json: { outfits: @outfits, outfits_items: outfits_items, image_urls: image_urls }
  end

  def create  # need to create outfits_items objects
    outfit = Outfit.create(user: current_user)
    # OutfitsItem.create(outfit: outfit, item_id: params[])
    # OutfitsItem.create(outfit: outfit, item_id: params[])
    # OutfitsItem.create(outfit: outfit, item_id: params[])
    # OutfitsItem.create(outfit: outfit, item_id: params[])

    # if @outfit.save
    #   render json: @outfit
    # else
    #   # render error?
    # end
  end

  def show
    @outfit = Outfit.find(params[:id])
    outfits_item = @outfit.outfits_items
    image_urls = outfits_item.map {|outfit_item| outfit_item.item.image.url }
    render json: { outfit: @outfit, outfits_item: outfits_item, image_urls: image_urls }
  end

  def update
  end

  def destroy
    outfit = Outfit.find(params[:id])
    outfit.destroy
  end

  private
  def outfit_params
    params.require(:outfit).permit(:user_id)
  end

  def outfit_items_params
    params.require(:outfits_items).permit(:user_id, :outfit_id)
  end

end
