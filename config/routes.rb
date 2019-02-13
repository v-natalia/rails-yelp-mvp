Rails.application.routes.draw do
  # root_to 'restaurants#index'
  root 'restaurants#home'
  resources :restaurants, only: [:show, :create, :new, :index] do
    resources :reviews, only: [ :new, :create ]
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
