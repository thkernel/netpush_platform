class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :status
end
