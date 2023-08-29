Rails.application.routes.draw do
  namespace :api do
    get 'authors/index'
    get 'authors/high_rank'
    get 'authors/show'
    get 'authors/show_premium'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
