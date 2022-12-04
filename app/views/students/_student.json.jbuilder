json.extract! student, :id, :name, :user_id, :group_id, :created_at, :updated_at
json.url student_url(student, format: :json)
