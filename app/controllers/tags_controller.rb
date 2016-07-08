class TagsController < ApplicationController

  def index
    tag = Tag.all.map{|tag| tag.name}
    tagged_items = []
    Tag.all.each{|tag| tagged_items << tag.items.map{|item| [item.id, item.image.url(:large)]}}
    render json: {tag: tag, tagged_items: tagged_items}
  end

  def create # strong params?
    # tag = Tag.create(user: current_user, name: params[:name])
    tag = Tag.new(tag_params)
    # TagsItem.create(tag: tag, item_id: params[])
    # TagsItem.create(tag: tag, item_id: params[])
    # TagsItem.create(tag: tag, item_id: params[])
    # TagsItem.create(tag: tag, item_id: params[])

    if @tag.save
      render json: @tag
    else
      @tag.errors.full_messages << "Please try again."
      render json: @tag.errors.full_messages, status: 422
    end
  end

  def show
    tag = Tag.find(params[:id])
    render json: @tag
  end

  def update
  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy
    tag.delete_associated_tags_items
  end

  private

  def tag_params
    params.require(:tag).permit(:user_id, :name)
  end

  def tags_item_params
    params.require(:tags_item).permit(:tag_id, :item_id)
  end

end
