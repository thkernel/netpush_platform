# == Schema Information
#
# Table name: countries
#
#  id         :bigint           not null, primary key
#  name       :string
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CountrySerializer < ActiveModel::Serializer
    attributes :id, :name

    has_many :localities
 end
