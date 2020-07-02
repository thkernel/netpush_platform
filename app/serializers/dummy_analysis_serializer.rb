# == Schema Information
#
# Table name: dummy_analyses
#
#  id         :bigint           not null, primary key
#  name       :string
#  price      :float            default(0.0)
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DummyAnalysisSerializer < ActiveModel::Serializer
    attributes :id, :name, :price, :status, :user_id
 end
