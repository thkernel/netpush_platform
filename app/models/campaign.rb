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

class Campaign < ApplicationRecord
  include SharedUtils::Generate
  before_save :generate_random_number_uid

  belongs_to :user
end
