json.array!(@tutorials) do |tutorial|
  json.extract! tutorial, :id, :title, :content, :date, :videoURL
  json.url tutorial_url(tutorial, format: :json)
end
