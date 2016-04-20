Rails.application.routes.draw do
  resources :blogs

  root to: 'top#index'
end
