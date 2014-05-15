json.array!(@home) do |home|
  json.extract! home, :id
  json.url home_url(home, format: :json)
end
