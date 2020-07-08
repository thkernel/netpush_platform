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

class Contact < ApplicationRecord
  belongs_to :contact_book
  belongs_to :user
end
