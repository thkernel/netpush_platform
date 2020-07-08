# == Schema Information
#
# Table name: contact_books
#
#  id          :bigint           not null, primary key
#  uuid        :string
#  name        :string
#  status      :string
#  slug        :string
#  description :text
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ContactBookSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :slug, :description
  has_one :user
end
