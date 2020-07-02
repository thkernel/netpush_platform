# == Schema Information
#
# Table name: planning_items
#
#  id          :bigint           not null, primary key
#  planning_id :bigint
#  day         :string
#  start_time  :time
#  end_time    :time
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PlanningItemSerializer < ActiveModel::Serializer
    attributes :id, :planning_id, :day, :start_time,:end_time 

    belongs_to :planning
 end
