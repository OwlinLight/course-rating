json.extract! survey, :id, :score, :comment, :submitted, :event_id, :audience_id, :presenter_id, :created_at, :updated_at
json.url survey_url(survey, format: :json)
