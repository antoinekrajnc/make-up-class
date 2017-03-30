Rails.application.routes.draw do
  devise_for :users
  resources :makeups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "makeups#index"
  get '/all_dates', to: "makeups#all_dates", as: "all_dates"
end