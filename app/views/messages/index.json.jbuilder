json.array!(@messages) do |message|
  json.extract! message, :id, :subject, :body, :published_at, :read, :user_id
  json.url message_url(message, format: :json)
end
