json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :commentor_id, :comment, :date_filed
  json.url comment_url(comment, format: :json)
end
