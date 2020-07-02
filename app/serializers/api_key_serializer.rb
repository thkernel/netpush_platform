# == Schema Information
#
# Table name: api_keys
#
#  id           :bigint           not null, primary key
#  access_token :string           not null
#  user_id      :integer          not null
#  active       :boolean          default(TRUE), not null
#  expires_at   :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ApiKeySerializer < ActiveModel::Serializer
    attributes :id, :access_token, :user_id, :active, :expires_at,:created_at, :updated_at

    belongs_to :user
end
