Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 ###ORDERS Routes
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"

 ###Products Routes
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

### Suppliers Routes
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "suppliers/:id" => "suppliers#update"
  delete "suppliers/:id" => "suppliers#destroy"

  ###User routes
  post "/users" => "users#create"


  ###JWT routes
  post "/sessions" => "sessions#create"
end
