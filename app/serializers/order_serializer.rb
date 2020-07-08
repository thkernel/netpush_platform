class OrderSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :user
end
