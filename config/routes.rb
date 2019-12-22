Rails.application.routes.draw do
  get 'applyings/new'
  get 'applyings/create'
  get 'applyings/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:index, :show, :edit, :update, :destroy] do
    member do
      post :follow
      post :unfollow
    end
  end
  resources :applyings, only: [:new, :create, :destroy]
  resources :publications, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :band_projects

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
