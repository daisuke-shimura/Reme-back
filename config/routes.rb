Rails.application.routes.draw do
  # 管理者ページ
  devise_for :admins

  namespace :admin do
    resources :questions
  end


  # 一般ユーザ
  devise_for :users

  get "/sample" => "application#sample"
  resources :users, only: [:show, :edit, :update, :delete]
  scope module: :public do
    resources :results, only: [:index, :create, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
