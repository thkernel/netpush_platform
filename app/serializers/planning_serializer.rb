# == Schema Information
#
# Table name: plannings
#
#  id           :bigint           not null, primary key
#  structure_id :bigint
#  profile_id   :bigint
#  status       :string
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class PlanningSerializer < ActiveModel::Serializer
    attributes :id, :structure_id, :profile_id, :user_id

    belongs_to :structure
    belongs_to :user


  has_many :planning_items, dependent: :destroy
 end
