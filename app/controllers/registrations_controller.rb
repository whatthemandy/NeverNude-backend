class RegistrationsController < ApplicationController
  def create
   @user = User.create!(:email => params[:email], :password => params[:password], :first_name => params[:first_name], :last_name => params[:last_name], :nickname => params[:nickname])

   render json: @user
  end
end
