class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :friendly_time, :tax, :total, :image_url
end


