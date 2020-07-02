# == Schema Information
#
# Table name: medicaments
#
#  id           :bigint           not null, primary key
#  name         :string
#  dci          :string
#  price        :float            default(0.0)
#  structure_id :bigint
#  user_id      :bigint
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class MedicamentSerializer < ActiveModel::Serializer
    attributes :id, :name, :price, :structure_id, :status, :user_id
    has_many :structure_medicaments
 end
