class CredentialSerializer < ActiveModel::Serializer
  attributes :id, :api_key, :api_secret, :active
  has_one :user
end
