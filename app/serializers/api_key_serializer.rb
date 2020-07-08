# == Schema Information
#
# Table name: api_keys
#
#  id                      :bigint           not null, primary key
#  client_id               :string
#  api_key                 :string
#  api_secret              :string
#  access_token            :string
#  refresh_token           :string
#  status                  :string           default("active")
#  access_token_expire_at  :datetime
#  refresh_token_expire_at :datetime
#  user_id                 :bigint
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class ApiKeySerializer < ActiveModel::Serializer
    attributes :id, :access_token, :user_id, :active, :expires_at,:created_at, :updated_at

    belongs_to :user
end
