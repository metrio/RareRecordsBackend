Rails.application.routes.draw do
  resources :records, only: [:show, :index, :create, :update]

  resources :owners, only: [:show, :destroy, :create, :index] 

  resources :users, only: [:create, :index, :show, :destroy] do
    resources :wishlists, only: [:index, :show, :create, :update, :destroy]
  end

 resources :record_stores, only: [:create, :index, :show, :destroy] do
    resources :recordstore_records, only: [:index, :show, :create, :update, :destroy]
 end

 post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  post '/owner-login', to: 'auth#owner_create'
  get '/owner-profile', to: 'owners#profile'

end
