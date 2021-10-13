class ProductsController < ApplicationController
  def get_products
    render json: {products: Product.all}
  end
end
