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

require 'test_helper'

class CampaignTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
