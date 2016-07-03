Rails.application.routes.draw do
  scope :v1 do
    mount_devise_token_auth_for 'User', at: 'auth'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'secret' => 'secret#secret' #secret path

  resources :section, only: [:index] do
    resources :item, except: [:new, :edit, :update]
  end

end
