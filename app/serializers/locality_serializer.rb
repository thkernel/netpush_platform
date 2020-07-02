# == Schema Information
#
# Table name: localities
#
#  id            :bigint           not null, primary key
#  country_id    :bigint
#  region        :string
#  cercle        :string
#  commune       :string
#  city          :string
#  neighbourhood :string
#  status        :string
#  user_id       :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class LocalitySerializer < ActiveModel::Serializer
    attributes :id, :country_id, :city
    belongs_to :country
    has_many :profiles
 end
