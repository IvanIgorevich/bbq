Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"

  resources :users, only: %i[show edit update]
  resources :events

end
