Rails.application.routes.draw do
  devise_for :users

  root 'posts#index'

  resources :posts do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
  end

  resources :users, only: :show

  get "chest" => "menus#chest"
  get "back" => "menus#back"
  get "shoulder" => "menus#shoulder"
  get "arm" => "menus#arm"
  get "leg" => "menus#leg"
  get "abs" => "menus#abs"
end
