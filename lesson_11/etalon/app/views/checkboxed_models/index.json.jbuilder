json.array!(@checkboxed_models) do |checkboxed_model|
  json.extract! checkboxed_model, :id, :music
  json.url checkboxed_model_url(checkboxed_model, format: :json)
end
