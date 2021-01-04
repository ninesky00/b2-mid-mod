Rails.application.routes.draw do
  get "/", to: "welcome#index"
  resources :studios, only: [:index, :show] do 
    resources :movies, only: [:index, :show]
  end
  resources :actors, only: [:index, :show]
end
