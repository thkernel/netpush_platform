json.extract! schedule_item, :id, :schedule_id, :day, :start_time, :end_time, :created_at, :updated_at
json.url schedule_item_url(schedule_item, format: :json)
