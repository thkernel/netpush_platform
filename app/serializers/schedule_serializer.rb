# == Schema Information
#
# Table name: schedules
#
#  id           :bigint           not null, primary key
#  structure_id :bigint
#  status       :string
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ScheduleSerializer < ActiveModel::Serializer
    attributes :id, :structure_id
    
    belongs_to :structure
    has_many :schedule_items
 end
