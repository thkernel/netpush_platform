# == Schema Information
#
# Table name: specialities
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class SpecialitySerializer < ActiveModel::Serializer
    attributes :id, :name
 end
