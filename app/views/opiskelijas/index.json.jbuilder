json.array!(@opiskelijas) do |opiskelija|
  json.extract! opiskelija, :id, :numero, :aika_id
  json.url opiskelija_url(opiskelija, format: :json)
end
