Rails.application.routes.draw do
  get 'actors/index'
  get 'actors/show'
  get 'movies/index'
  get 'movies/show'
  get 'studios/index'
  get 'studios/show'
  get "/", to: "welcome#index"
  resources :studios do 
    resources :movies
  end
  resources :actors
end
