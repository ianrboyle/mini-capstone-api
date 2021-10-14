

class ProductsController < ApplicationController
  def get_products
    products = Product.all
    render json: {products: products.as_json}
  end
  def get_first_product
    product = Product.first
    render json: {products: product.as_json}
  end
  def get_last_product
    product = Product.last
    render json: {products: product.as_json}
  end
  def get_second_product
    product = Product.second
    render json: {products: product.as_json}
  end
  def get_any_product
    input_value = params["product_id"].to_i
    product = Product.find_by(id: input_value)
    render json: {products: product.as_json}
  end
end
