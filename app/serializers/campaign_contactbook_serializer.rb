class CampaignContactbookSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :status
  has_one :contact_book
  has_one :campaign
  has_one :user
end
