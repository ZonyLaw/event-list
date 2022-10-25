Rails.application.routes.draw do
  # get 'events/index'
  # get 'events/new'
  # get 'events/create'
  # get 'events/update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :events
end
