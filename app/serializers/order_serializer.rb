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

class OrderSerializer < ActiveModel::Serializer
  attributes :id, :uid, :status
  has_one :user
end
