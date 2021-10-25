class User < ApplicationRecord
  has_secure_password
  has_many :orders
  validates :email, presence: true, uniqueness: true
end



###
#we will probably need an order controller where we can view/create an order/ update/delete an order. 

#we need to link an order to the product and user associated with it

# we need an order option or order button on a product's page 

# order.product_id equals the id of a product
# same with order.user_id