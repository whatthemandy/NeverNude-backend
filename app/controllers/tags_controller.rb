class TagsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tags = Tag.all.map(&:name)
    tagged_items = []
    Tag.all.each { |tag| tagged_items << tag.items.map { |item| [item.id, item.image.url(:large)] } }
    render json: { tag: tag, tagged_items: tagged_items }
  end

  def create
    tag = Tag.new(tag_params)
    # TagsItem.create

    if tag.save
      render json: tag, status: 201
    else
      tag.errors.full_messages << 'Please try again.'
      render json: tag.errors.full_messages, status: 422
    end
  end

  def show
    @tag = Tag.find(params[:id])
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
end
