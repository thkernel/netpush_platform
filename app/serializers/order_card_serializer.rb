class OrderCardSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :country, :city, :address, :phone_number, :card_type, :quantity, :status, :note
end
