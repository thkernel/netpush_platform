# == Schema Information
#
# Table name: medicament_order_items
#
#  id                  :bigint           not null, primary key
#  medicament_order_id :bigint
#  medicament_id       :bigint
#  price               :float
#  quantity            :integer
#  unity               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class MedicamentOrderItemSerializer < ActiveModel::Serializer
  attributes :id, :price, :quantity, :unity
  
  belongs_to :medicament_order
end
