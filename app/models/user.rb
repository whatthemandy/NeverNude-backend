class User < ActiveRecord::Base
  has_many :items
  has_many :outfits
  has_many :tags
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  include DeviseTokenAuth::Concerns::User
end
