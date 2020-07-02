# == Schema Information
#
# Table name: consultation_types
#
#  id         :bigint           not null, primary key
#  name       :string
#  price      :float            default(0.0)
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ConsultationTypeSerializer < ActiveModel::Serializer
    attributes :id, :name, :price
 end
