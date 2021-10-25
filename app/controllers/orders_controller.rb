class OrdersController < ApplicationController
  
  def index
    orders = Order.all
    if current_user
      render json: orders
    else
      render json: {error: "You must be logged in."}, status: 406
    end
  end

  def show
    order = Order.find_by(id: params["id"])
    if current_user
      render json: order
    else
      render json: {error: "You must be logged in."}, status: 406
    end
  end
  
  def create
    product = Product.find_by(id: params[:product_id])
    # def subtotal
    #   product = Product.find_by(id: product_id)
    #   product.price * 
    # end
    # def tax
    #   tax = price * 0.09
    #   tax.round(3)
    # end
    # def total
    #   total = price + tax
    # end
    calculated_subtotal = product.price * params["quantity"]
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    order = Order.new(
      user_id: current_user.id, 
      product_id: params["product_id"], 
      quantity: params["quantity"], 
      subtotal: calculated_subtotal, 
      tax: calculated_tax, 
      total: calculated_total
    )  
    # order = Order.new(user_id: current_user.id, product_id: params["product_id"], quantity: params["quantity"], subtotal: order.subtotal, tax: Product.find_by(id: params["product_id"]).tax, total: Product.find_by(id: params["product_id"]).total)  
    if order.save
      render json: order
    else 
      render json: {errors: order.errors.full_messages}, status: 406
    end
  end
end
