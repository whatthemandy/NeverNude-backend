class SecretController < ApplicationController
  def secret
    puts params.inspect
  end
end
