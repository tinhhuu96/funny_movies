Rails.application.routes.draw do
  devise_scope :user do
    get "login" => "devise/sessions#new", as: :new_user_session
    post "login" => "devise/sessions#create", as: :user_session
    get "logout" => "devise/sessions#destroy", as: :destroy_user_session
  end
  devise_for :users, skip: [:session]
  root to: "home#index"
  resources :users
  # resources :shares 
  get 'share', to: 'shares#new'
  post 'share', to: 'shares#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
