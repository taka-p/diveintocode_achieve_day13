Rails.application.routes.draw do
  resources :blogs
  get 'company/show' => 'company#show'

  get 'inquiry' => 'inquiry#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
  post 'inquiry/thanks' => 'inquiry#thanks'     # 送信完了画面

  root to: 'top#index'
end
