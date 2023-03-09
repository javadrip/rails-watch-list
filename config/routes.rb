Rails.application.routes.draw do
  get 'bookmarks/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: %i[index show new create]
  # Defines the root path route ("/")
  # root "articles#index"
end
