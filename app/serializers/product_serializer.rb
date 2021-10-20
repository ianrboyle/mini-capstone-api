class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :tax, :total, :image_url
end


