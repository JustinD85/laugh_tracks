Rails.application.routes.draw do
  root to: 'home#index'
  resources :players, only: [:index,:new,:create]
end
