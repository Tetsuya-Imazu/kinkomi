Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  resources :posts do
    resources :comments, only: :create
    # resources :likes, only: [:create, :destroy]
  end
  resources :users, only: :show do
    collection do
      get :likes
    end
  end


  get "chest" => "menus#chest"
  get "back" => "menus#back"
  get "shoulder" => "menus#shoulder"
  get "arm" => "menus#arm"
  get "leg" => "menus#leg"
  get "abs" => "menus#abs"
end
