class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :status
  has_one :product_category
  has_one :user
end
