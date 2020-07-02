# == Schema Information
#
# Table name: analysis_request_items
#
#  id                  :bigint           not null, primary key
#  analysis_request_id :bigint
#  analysis_id         :bigint
#  price               :float
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class AnalysisRequestItemSerializer < ActiveModel::Serializer
  attributes :id, :analysis_id, :analysis_request_id, :price
  belongs_to :analysis_request
end
