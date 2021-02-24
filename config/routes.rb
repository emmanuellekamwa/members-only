Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  root 'posts#index'
  get "posts/new" => "posts#new"
  resources :posts, only: [:new, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end