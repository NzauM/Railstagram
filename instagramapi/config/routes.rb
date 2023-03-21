Rails.application.routes.draw do
  # devise_for :users
  # resources :users
  resources :likes
  resources :posts 
  # resources :sessions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/welcome/addpost', to: "welcome#addpost"
  get '/welcome/', to: "welcome#heythere"
end
