json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :dates, :place, :featured, :image
  json.url event_url(event, format: :json)
end
