json.extract! event, :id, :subject, :body, :strayed_id, :rescuer_id, :state, :gps, :created_at, :updated_at
json.url event_url(event, format: :json)
