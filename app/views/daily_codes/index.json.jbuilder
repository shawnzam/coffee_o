json.array!(@daily_codes) do |daily_code|
  json.extract! daily_code, :id, :code_for_mug, :code_for_non_mug
  json.url daily_code_url(daily_code, format: :json)
end
