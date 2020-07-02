# == Schema Information
#
# Table name: structure_medicaments
#
#  id            :bigint           not null, primary key
#  structure_id  :bigint
#  medicament_id :bigint
#  price         :float
#  status        :string
#  user_id       :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class StructureMedicamentSerializer < ActiveModel::Serializer
  attributes :id, :price, :status
  belongs_to :structure
  belongs_to :medicament
  has_one :user
end
