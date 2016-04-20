Rails.application.routes.draw do
  resources :blogs
  get 'company/show' => 'company#show'

  root to: 'top#index'
end
