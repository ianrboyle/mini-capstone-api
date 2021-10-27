class Product < ApplicationRecord
  # validates :price, presence: true 
  # validates :price, numericality: { greater_than: 0 }
  # validates :name, presence: true, uniqueness: true
  # validates :description, presence: true, uniqueness: true
  # validates :description, length: { in: 5..500 }
  
  belongs_to :supplier
  has_many :orders
  has_many :images
  has_many :category_products

  def is_discounted?
    price <= 10
  end

  # def cost 
  #   product = Product.find_by(id: params["product_id"])
  #   product.price
  # end
  
  def tax
    tax = price * 0.09
    tax.round(3)
  end

  def total
    total = price + tax
  end

  # def friendly_time
  #   created_at.strftime("%B %d, %Y")
  # end


end
