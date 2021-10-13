Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/all_products" => "products#get_products"
  get "first_product" => "products#get_first_product"
  get "last_product" => "products#get_last_product"
end
