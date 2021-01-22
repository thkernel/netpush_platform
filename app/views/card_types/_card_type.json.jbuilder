json.extract! card_type, :id, :uid, :name, :description, :status, :user_id, :created_at, :updated_at
json.url card_type_url(card_type, format: :json)
