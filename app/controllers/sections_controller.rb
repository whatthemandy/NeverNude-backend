class SectionsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    @sections = Section.all
    render json: @sections
  end

end
