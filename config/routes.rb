Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/songs" => "songs#index"
  post "/songs" => "songs#create"
  get "/songs/:id" => "songs#show"
  patch "/songs/:id" => "songs#update"
  delete "/songs/:id" => "songs#delete"
end
