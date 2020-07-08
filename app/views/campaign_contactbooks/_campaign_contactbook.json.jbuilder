json.extract! campaign_contactbook, :id, :uuid, :contact_book_id, :campaign_id, :status, :user_id, :created_at, :updated_at
json.url campaign_contactbook_url(campaign_contactbook, format: :json)
