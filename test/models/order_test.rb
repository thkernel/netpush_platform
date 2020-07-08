# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  uid        :text
#  user_id    :bigint
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
