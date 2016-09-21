json.extract! comment, :id, :name, :content, :rating, :created_at, :updated_at
json.url comment_url(comment, format: :json)