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

class Order < ApplicationRecord
  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :user
end
