class ContactSerializer < ActiveModel::Serializer
  attributes :id, :uuid, :first_name, :last_name, :gender, :main_phone_number, :email, :country, :city, :address, :status, :slug, :notes
  has_one :contact_book
  has_one :user
end
