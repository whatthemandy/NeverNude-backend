Rails.application.routes.draw do
  scope :v1 do
    mount_devise_token_auth_for 'User', at: 'auth', :defaults => { :format => 'json' }
    match '/auth/register' => 'registrations#create', :via => 'post', :defaults => { :format => 'json' }
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'secret' => 'secret#secret' #secret path
  post 'items' => 'items#test' #test post

  resources :sections, only: [:index] do
    resources :items, except: [:edit, :update]
  end

  resources :outfits, except: [:new, :edit]

  resources :tags, except: [:new, :edit]

end
