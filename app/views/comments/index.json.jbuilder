json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :email, :text
  json.url comment_url(comment, format: :json)
end
