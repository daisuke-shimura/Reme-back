Rails.application.routes.draw do
  # 管理者ページ
  devise_for :admins

  namespace :admin do
    resources :questions, only: [:index]
  end


  # 一般ユーザ
  devise_for :users

  get "/sample" => "application#sample"
  resources :users, only: [:show, :edit, :update, :delete]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
