class SecretController < ApplicationController
  def secret
    puts params.inspect
    render nothing: true
  end
end
