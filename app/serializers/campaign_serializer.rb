# == Schema Information
#
# Table name: campaigns
#
#  id               :bigint           not null, primary key
#  uuid             :string
#  title            :string
#  content          :text
#  start_date       :datetime
#  start_hour       :datetime
#  status           :string
#  start_immediatly :boolean
#  notes            :text
#  user_id          :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :start_date, :start_hour, :status, :start_immediatly, :notes
  has_one :user
end
