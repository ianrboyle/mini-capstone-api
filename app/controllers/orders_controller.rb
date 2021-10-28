class OrdersController < ApplicationController
  before_action :authenticate_user
  def index
    orders = current_user.orders
    render json: orders
  end

  def show
    order = current_user.orders.find_by(id: params["id"])
    render json: order
  end
  
  def create
    
    carted_products = current_user.carted_products.where(status: 
    "carted")
      # product = Product.find_by(id: params[:product_id])
    calculated_subtotal = 0
    carted_products.each {|carted_product| 
      calculated_subtotal = carted_product.product.price * carted_product.quantity
    }
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    order = Order.new(
      user_id: current_user.id,  
      subtotal: calculated_subtotal, 
      tax: calculated_tax, 
      total: calculated_total
    )
 
    if order.save
      carted_products.update_all(status: "ordered", order_id: order.id)
      render json: order.as_json, include: "carted_products.product"
    else 
      render json: {errors: orders.errors.full_messages}, status: 406
    end

  end

end
