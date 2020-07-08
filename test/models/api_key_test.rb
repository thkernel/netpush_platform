# == Schema Information
#
# Table name: api_keys
#
#  id                      :bigint           not null, primary key
#  client_id               :string
#  api_key                 :string
#  api_secret              :string
#  access_token            :string
#  refresh_token           :string
#  status                  :string           default("active")
#  access_token_expire_at  :datetime
#  refresh_token_expire_at :datetime
#  user_id                 :bigint
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

require 'test_helper'

class ApiKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
