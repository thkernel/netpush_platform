# == Schema Information
#
# Table name: medicament_orders
#
#  id               :bigint           not null, primary key
#  patient_id       :bigint
#  insured          :string
#  insurance_id     :bigint
#  insurance_number :string
#  structure_id     :bigint
#  status           :string
#  notes            :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#


class MedicamentOrderSerializer < ActiveModel::Serializer
    attributes :id, :structure_id, :patient_id

    has_many :medicament_order_items
  end
  
