json.extract! user, :id, :email, :passwd, :name, :location, :bio, :website, :avatar_file_name, :state, :qq, :last_logined_at, :tagline, :created_at, :updated_at
json.url user_url(user, format: :json)