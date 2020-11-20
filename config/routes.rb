Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :offers, only: [:new, :create, :show, :index] do

    member do
      get :success
    end
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index] do
    member do # member when you want id in link
      get :success
    end
  end
end

# collection /bookings/success
