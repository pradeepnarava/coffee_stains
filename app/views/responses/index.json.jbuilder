json.array!(@responses) do |response|
  json.extract! response, :id, :user_id, :question_id, :response
  json.url response_url(response, format: :json)
end
