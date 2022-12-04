json.extract! user, :id, :email, :password, :class_id, :group_id, :created_at, :updated_at
json.url user_url(user, format: :json)
