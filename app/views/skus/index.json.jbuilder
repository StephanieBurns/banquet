json.array!(@skus) do |sku|
  json.extract! sku, :id, :order_id, :name, :price
  json.url sku_url(sku, format: :json)
end
