json.extract! survey, :id, :rating, :comment, :student_id, :presentation_id, :created_at, :updated_at
json.url survey_url(survey, format: :json)
