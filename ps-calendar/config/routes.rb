Rails.application.routes.draw do
  resources :makeups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "makeups#index"
end
