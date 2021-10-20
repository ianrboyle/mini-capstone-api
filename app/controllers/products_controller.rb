

class ProductsController < ApplicationController
  
  def index
    products = Product.all
    render json: products
  end
  def show
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    render json: product
  end

  def create
    product = Product.new(
      name: params["name"], 
      price: params["price"], 
      description: params["description"]
    )
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 406
    end
  end
  
  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description

    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 406
    end
  end

  def destroy
    
    product = Product.find_by(id: params[:id])
    product.destroy
   
    render json: {message: "product destroyed"}
  end
end
