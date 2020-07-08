json.extract! contact_book, :id, :name, :status, :slug, :description, :user_id, :created_at, :updated_at
json.url contact_book_url(contact_book, format: :json)
