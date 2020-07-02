# == Schema Information
#
# Table name: advices
#
#  id                   :bigint           not null, primary key
#  consultation_type_id :bigint
#  name                 :string
#  city                 :string
#  phone                :string
#  doctor_id            :bigint
#  email                :string
#  object               :string
#  content              :text
#  user_id              :bigint
#  status               :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#


class AdviceSerializer < ActiveModel::Serializer
    attributes :id, :consultation_type_id, :doctor_id,:object, :content,  :user_id
 end
