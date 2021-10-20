class Product < ApplicationRecord
  validates :price, presence: true 
  validates :price, numericality: { greater_than: 0 }
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
  validates :description, length: { in: 5..500 }
  
  def is_discounted?
    price <= 10
  end

  def tax
    tax = price * 0.09
    tax.round(3)
  end

  def total
    total = price + tax
    results = "$#{total}"
  end

  # def friendly_time
  #   created_at.strftime("%B %d, %Y")
  # end


end
