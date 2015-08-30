json.array!(@aikas) do |aika|
  json.extract! aika, :id, :aika
  json.url aika_url(aika, format: :json)
end
