Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/all_products" => "products#get_products"
  # get "/first_product" => "products#get_first_product"
  # get "/last_product" => "products#get_last_product"
  # get "/second_product" => "products#get_second_product"
  # get "/any_product/:product_id" => "products#get_any_product"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
end
