class PermissionRoleSerializer < ActiveModel::Serializer
  attributes :id, :status
  has_one :role
  has_one :permission
end
