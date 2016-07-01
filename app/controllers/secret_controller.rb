class SecretController < ApplicationController
  def secret
    puts params.inspect
    render json: { {} }
  end
end
