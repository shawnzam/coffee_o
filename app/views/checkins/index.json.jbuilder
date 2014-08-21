json.array!(@checkins) do |checkin|
  json.extract! checkin, :id, :coffee_drinker_id, :with_mug, :current_score
  json.url checkin_url(checkin, format: :json)
end
