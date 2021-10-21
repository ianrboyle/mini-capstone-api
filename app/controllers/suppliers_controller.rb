class SuppliersController < ApplicationController
  def index
    render json: Supplier.all
  end
  def show
    supplier = Supplier.find_by(id: params[:id])
    render json: supplier.as_json
  end

  def create
    supplier = Supplier.new(name: params["name"], email: params["email"], phone_number: params["phone_number"])
    if supplier.save
      render json: supplier.as_json
    else
      render json: {errors: supplier.errors.full_messages}, status: 406
    end
  end

  def update
    supplier = Supplier.find_by(id: params[:id])
    supplier.name = params["name"] || supplier.name
    supplier.email = params["email"] || supplier.email
    supplier.phone_number = params["phone_number"] || supplier.phone_number
    supplier.save
    render json: supplier.as_json
  end

  def destroy
    supplier = Supplier.find_by(id: params[:id])
    message  = "#{supplier.name} removed from the database."
    supplier.destroy
    render json: {message: message}
  end
end
