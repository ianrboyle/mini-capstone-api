class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  # def subtotal
  #   product = Product.find_by(id: product_id)
  #   product.price
  # end
  # def tax
  #   tax = price * 0.09
  #   tax.round(3)
  # end

  # def total
  #   total = price + tax
  # end
end
