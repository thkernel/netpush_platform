json.extract! contact, :id, :uuid, :first_name, :last_name, :gender, :main_phone_number, :email, :country, :city, :address, :status, :slug, :notes, :contact_book_id, :user_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
