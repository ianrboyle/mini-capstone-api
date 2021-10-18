

class ProductsController < ApplicationController
  
  def index
    products = Product.all
    render json: products.as_json
  end
  def show
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    render json: product.as_json(methods: [:is_discounted?])
  end

  def create
    product = Product.new(
      name: params["name"], 
      price: params["price"], 
      description: params["description"]
    )
    product.save
    render json: product.as_json
  end
  
  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description

    product.save
    render json: product.as_json
  end

  def destroy
    
    product = Product.find_by(id: params[:id])
    product.destroy
   
    render json: {message: "product destroyed"}
  end
end
