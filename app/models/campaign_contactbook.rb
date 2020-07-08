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

class CampaignContactbook < ApplicationRecord
  belongs_to :contact_book
  belongs_to :campaign
  belongs_to :user
end
