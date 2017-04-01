Rails.application.routes.draw do
  devise_for :users
  resources :makeups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "salesforcecohorts#index"
  get '/all_dates', to: "salesforcecohorts#all_dates", as: "all_dates"
  get '/salesforcecohorts/index', to: 'salesforcecohorts#index', as:'index'
end
