json.array!(@bulletins) do |bulletin|
  json.extract! bulletin, :id, :title, :description
  json.url bulletin_url(bulletin, format: :json)
end
