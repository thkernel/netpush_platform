# == Schema Information
#
# Table name: order_cards
#
#  id           :bigint           not null, primary key
#  first_name   :string
#  last_name    :string
#  country      :string
#  city         :string
#  address      :string
#  phone_number :string
#  email        :string
#  card_type    :string
#  quantity     :integer
#  status       :string
#  notes        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class OrderCardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
