# == Schema Information
#
# Table name: structure_analyses
#
#  id           :bigint           not null, primary key
#  structure_id :bigint
#  analysis_id  :bigint
#  price        :float
#  delay        :string
#  status       :string
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class StructureAnalysisSerializer < ActiveModel::Serializer
  attributes :id, :structure_id, :analyse_id, :price, :delay,  :status
  belongs_to :structure
  belongs_to :analysis
  has_one :user
end
