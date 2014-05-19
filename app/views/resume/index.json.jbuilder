json.array!(@resume) do |resume|
  json.extract! resume, :id
  json.url resume_url(resume, format: :json)
end
