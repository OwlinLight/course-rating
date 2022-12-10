json.extract! presentation, :id, :title, :description, :student_id, :event_id, :created_at, :updated_at
json.url presentation_url(presentation, format: :json)
