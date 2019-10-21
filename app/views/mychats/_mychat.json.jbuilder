json.extract! mychat, :id, :message, :username, :created_at, :updated_at
json.url mychat_url(mychat, format: :json)
