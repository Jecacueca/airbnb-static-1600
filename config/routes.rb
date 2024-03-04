Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flats#index"
  # localhost:3000/index
  # get "/index", to: "flats#index"
  get '/flat/:id', to: "flats#show", as: "flat"
end
