json.array!(@store_to_visits) do |store_to_visit|
  json.extract! store_to_visit, :id, :store_id, :user_id
  json.url store_to_visit_url(store_to_visit, format: :json)
end
