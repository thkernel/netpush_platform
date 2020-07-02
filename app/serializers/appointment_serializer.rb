# == Schema Information
#
# Table name: appointments
#
#  id              :bigint           not null, primary key
#  patient_id      :bigint
#  doctor_id       :bigint
#  reason          :string
#  day             :string
#  start_time      :time
#  end_time        :time
#  content         :text
#  validated       :boolean
#  validation_date :datetime
#  canceled        :boolean
#  canceled_date   :datetime
#  status          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  structure_id    :bigint
#

class AppointmentSerializer < ActiveModel::Serializer
    attributes :id, :patient_id, :doctor_id , :structure_id, :reason,:day,:start_time,:end_time,:content
    belongs_to :structure
    belongs_to :patient, :foreign_key => "patient_id", :class_name => "User"

    belongs_to :doctor, :foreign_key => "doctor_id", :class_name => "User"
 end
