class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
    outfits_items = @outfits.map { |outfit| outfit.outfits_items }
    image_urls = outfits_items.map { |outfit| outfit.map {|outfit_item| outfit_item.item.image.url } }
    render json: { outfits: @outfits, outfits_items: outfits_items, image_urls: image_urls }
  end

  def create # strong params?
    puts "\n\n\n\n\n\n\n\n\n\n #{outfit_params} \n\n\n\n\n\n\n\n\n"
    outfit = Outfit.create(user: current_user)
    OutfitsItem.create(outfit: outfit, item_id: params[])
    OutfitsItem.create(outfit: outfit, item_id: params[])
    OutfitsItem.create(outfit: outfit, item_id: params[])
    OutfitsItem.create(outfit: outfit, item_id: params[])

    if outfit.save
      render json: outfit
    else
      outfit.errors.full_messages << "Please try again."
      render json: outfit.errors.full_messages, status: 422
    end
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
    outfit.delete_associated_outfits_items
  end

  private

  def outfit_params
    params.require(:outfit).permit!
    # outfit_params.fetch(:outfit, {}).permit!
  end

  # def outfits_item_params
    # params.require(:outfits_item).permit(:outfit_id, :item_id)
  # end

end
