# == Schema Information
#
# Table name: products
#
#  id                  :bigint           not null, primary key
#  product_category_id :bigint
#  name                :string
#  description         :string
#  status              :string
#  user_id             :bigint
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
