Rails.application.routes.draw do
  resources :records, only: [:show, :index, :create]

  resources :owners, only: [:show, :destroy] do
    resources :recordstores, only: [:create, :index, :show, :destroy]
  end

  resources :users, only: [:create, :index, :show, :destroy] do
    resources :wishlists, only: [:index, :show, :update, :destroy]
  end

end
