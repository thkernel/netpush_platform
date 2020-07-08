# == Schema Information
#
# Table name: product_categories
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :string
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :status
  has_one :user
end
