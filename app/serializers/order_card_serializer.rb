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

class OrderCardSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :country, :city, :address, :phone_number, :card_type, :quantity, :status, :note
end
