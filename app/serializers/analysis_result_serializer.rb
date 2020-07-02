# == Schema Information
#
# Table name: analysis_results
#
#  id                  :bigint           not null, primary key
#  analysis_request_id :bigint
#  content             :text
#  status              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class AnalysisResultSerializer < ActiveModel::Serializer
  attributes :id, :content, :status
  has_one :analysis_request
end
