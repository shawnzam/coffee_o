json.array!(@coffee_drinkers) do |coffee_drinker|
  json.extract! coffee_drinker, :id, :phone_number, :current_score
  json.url coffee_drinker_url(coffee_drinker, format: :json)
end
