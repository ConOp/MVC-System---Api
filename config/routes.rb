Rails.application.routes.draw do
  get 'pages/home', to:'pages#home', as: 'home'
  get 'pages/addfriend', to:'pages#addfriend'
  get 'posts/search_by_category', to:'posts#result'
  devise_for :users , :controllers => { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :friendships , :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
