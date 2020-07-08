json.extract! campaign, :id, :title, :content, :start_date, :start_hour, :status, :start_immediatly, :notes, :user_id, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
