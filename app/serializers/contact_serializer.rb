# == Schema Information
#
# Table name: contacts
#
#  id                :bigint           not null, primary key
#  uuid              :string
#  first_name        :string
#  last_name         :string
#  gender            :string
#  main_phone_number :string
#  email             :string
#  country           :string
#  city              :string
#  address           :string
#  status            :string
#  slug              :string
#  notes             :text
#  contact_book_id   :bigint
#  user_id           :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class ContactSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :first_name, :last_name, :gender, :main_phone_number, :email, :country, :city, :address, :status, :slug, :notes
  has_one :contact_book
  has_one :user
end
