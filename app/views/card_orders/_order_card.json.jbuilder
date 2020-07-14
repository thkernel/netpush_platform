json.extract! order_card, :id, :first_name, :last_name, :country, :city, :address, :phone_number, :card_type, :quantity, :status, :note, :created_at, :updated_at
json.url order_card_url(order_card, format: :json)
