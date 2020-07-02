# == Schema Information
#
# Table name: analyses
#
#  id              :bigint           not null, primary key
#  name            :string
#  normal_price    :float            default(0.0)
#  insurance_price :float            default(0.0)
#  structure_id    :bigint
#  user_id         :bigint
#  status          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  delay           :string
#

class AnalysisSerializer < ActiveModel::Serializer
    attributes :id, :name, :normal_price, :structure_id, :delay

    has_many :structure_analyses
    belongs_to :structure
 end
