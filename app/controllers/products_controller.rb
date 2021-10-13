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
end
