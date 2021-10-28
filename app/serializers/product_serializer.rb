class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :is_discounted?, :categories, :images

  has_many :images
  belongs_to :supplier
end


