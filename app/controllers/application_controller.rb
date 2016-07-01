class ApplicationController < ActionController::API
  protect_from_forgery with: :null_session
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::SetUserByToken

end
