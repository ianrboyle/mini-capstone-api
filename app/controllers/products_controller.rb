

class ProductsController < ApplicationController
  # def get_products
  #   products = Product.all
  #   render json: {products: products.as_json}
  # end
  # def get_first_product
  #   product = Product.first
  #   render json: {products: product.as_json}
  # end
  # def get_last_product
  #   product = Product.last
  #   render json: {products: product.as_json}
  # end
  # def get_second_product
  #   product = Product.second
  #   render json: {products: product.as_json}
  # end
  # def get_any_product
  #   input_value = params[:product_id].to_i
  #   product = Product.find_by(id: input_value)
  #   render json: {products: product.as_json}
  # end
  def index
    products = Product.all
    render json: {products: products.as_json}
  end
  def show
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    render json: {product: product.as_json}
  end

  def create
    # product = Product.new(name: FFaker::Product.product_name, price: FFaker::Number.number, description: FFaker::Product.product)
    # product.save

    product = Product.new(name: params["name"], price: params["price"], description: params["description"])
    product.save
    render json: product.as_json
  end

  def destroy
    product_id = params["id"]
    message = "Product #{product_id} Deleted."
    product = Product.destroy(product_id)
    product.save
    render json: {message: message}
  end
end
