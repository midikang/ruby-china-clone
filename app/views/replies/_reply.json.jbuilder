json.extract! reply, :id, :topic_id, :body, :user_id, :state, :source, :created_at, :updated_at
json.url reply_url(reply, format: :json)