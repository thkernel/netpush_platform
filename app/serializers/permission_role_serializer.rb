# == Schema Information
#
# Table name: permission_roles
#
#  id            :bigint           not null, primary key
#  role_id       :bigint
#  permission_id :bigint
#  status        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class PermissionRoleSerializer < ActiveModel::Serializer
  attributes :id, :status
  has_one :role
  has_one :permission
end
