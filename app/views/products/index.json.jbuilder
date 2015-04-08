json.array!(@products) do |product|
  json.extract! product, :id, :store_id, :user_id, :name, :price, :quantity
  json.url product_url(product, format: :json)
end
