class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :start_date, :start_hour, :status, :start_immediatly, :notes
  has_one :user
end
