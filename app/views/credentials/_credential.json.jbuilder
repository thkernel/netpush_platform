json.extract! credential, :id, :api_key, :api_secret, :active, :user_id, :created_at, :updated_at
json.url credential_url(credential, format: :json)
