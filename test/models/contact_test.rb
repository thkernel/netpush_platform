# == Schema Information
#
# Table name: contacts
#
#  id                :bigint           not null, primary key
#  uuid              :string
#  first_name        :string
#  last_name         :string
#  gender            :string
#  main_phone_number :string
#  email             :string
#  country           :string
#  city              :string
#  address           :string
#  status            :string
#  slug              :string
#  notes             :text
#  contact_book_id   :bigint
#  user_id           :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
