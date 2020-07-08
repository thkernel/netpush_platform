class CampaignContactbook < ApplicationRecord
  belongs_to :contact_book
  belongs_to :campaign
  belongs_to :user
end
