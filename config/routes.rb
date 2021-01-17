Rails.application.routes.draw do
  resources :records, only: [:show, :index, :create]

  resources :owners, only: [:show, :destroy] 

  resources :users, only: [:create, :index, :show, :destroy] do
    resources :wishlists, only: [:index, :show, :create, :update, :destroy]
  end

 resources :recordstores, only: [:create, :index, :show, :destroy] do
    resources :recordstore_records, only: [:index, :show, :create, :update, :destroy]
 end

 post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

end
