# == Schema Information
#
# Table name: campaign_contactbooks
#
#  id              :bigint           not null, primary key
#  uuid            :string
#  contact_book_id :bigint
#  campaign_id     :bigint
#  status          :string
#  user_id         :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class CampaignContactbookSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :status
  has_one :contact_book
  has_one :campaign
  has_one :user
end
