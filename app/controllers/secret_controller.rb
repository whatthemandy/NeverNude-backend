class SecretController < ApplicationController
  def secret
    puts params.inspect
    render inline: {}.to_json
  end
end
