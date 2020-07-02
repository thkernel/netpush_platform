# == Schema Information
#
# Table name: work_places
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WorkPlaceSerializer < ActiveModel::Serializer
    attributes :id, :user_id
    belongs_to :user

    has_many :work_place_items
    
 end
