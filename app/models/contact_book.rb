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

class ContactBook < ApplicationRecord
	include SharedUtils::Generate

  before_save :generate_random_number_uid

  	belongs_to :user
  	has_many :contacts, dependent: :destroy

  	validates :uuid, presence: true, uniqueness: true
end
