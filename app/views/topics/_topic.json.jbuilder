json.extract! topic, :id, :title, :node_id, :body, :user_id, :replies_count, :last_reply_user_id, :replied_at, :source, :created_at, :updated_at
json.url topic_url(topic, format: :json)