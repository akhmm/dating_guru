Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :activities, only:[ :index, :show ]
  resources :restaurants, only:[:index, :show]
  resources :reviews, only: [:create, :destroy]
  resources :bookings, only: [:index,:show,:update,:destroy]

  get "category", to: "pages#category", as: :category
  patch "add_restaurant", to: "bookings#add_restaurant", as: :add_restaurant
  patch "add_activity", to: "bookings#add_activity", as: :add_activity

  post "activity_redirect_booking", to: "bookings#activity_redirect_booking", as: :activity_redirect_booking
  post "restaurant_redirect_booking", to: "bookings#restaurant_redirect_booking", as: :restaurant_redirect_booking
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
