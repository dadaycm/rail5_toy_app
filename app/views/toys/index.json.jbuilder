json.array!(@toys) do |toy|
  json.extract! toy, :id, :name, :weight, :favorite
  json.url toy_url(toy, format: :json)
end
