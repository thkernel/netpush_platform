# == Schema Information
#
# Table name: schedule_items
#
#  id          :bigint           not null, primary key
#  schedule_id :bigint
#  day         :string
#  start_time  :time
#  end_time    :time
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ScheduleItemSerializer < ActiveModel::Serializer

    attributes :id, :schedule_id, :day, :start_time, :end_time
     
    belongs_to :schedule
  end
