# == Schema Information
#
# Table name: work_place_items
#
#  id                 :bigint           not null, primary key
#  work_place_id      :bigint
#  structure_id       :bigint
#  consultation_price :float            default(0.0)
#  status             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class WorkPlaceItemSerializer < ActiveModel::Serializer
    attributes :id , :work_place_id,:structure_id, :consultation_price
    
    belongs_to :work_place
    belongs_to :structure
 end
