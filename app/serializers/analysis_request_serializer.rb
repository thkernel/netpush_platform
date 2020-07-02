# == Schema Information
#
# Table name: analysis_requests
#
#  id           :bigint           not null, primary key
#  patient_id   :bigint
#  structure_id :bigint
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  access_token :string           not null
#  active       :boolean          default(TRUE), not null
#  expires_at   :datetime
#

class AnalysisRequestSerializer < ActiveModel::Serializer
  attributes :id, :patient_id, :structure_id, :status
  belongs_to :patient
  belongs_to :structure
end
