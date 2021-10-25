class OrderSerializer < ActiveModel::Serializer
  attributes :id, :subtotal, :tax, :total
  belongs_to :product
  belongs_to :user
end
