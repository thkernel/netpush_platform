class ContactBookSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :slug, :description
  has_one :user
end
