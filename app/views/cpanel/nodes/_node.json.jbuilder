json.extract! node, :id, :name, :section_id, :sort, :topics_count, :summary, :created_at, :updated_at
json.url node_url(node, format: :json)