json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :party_date, :total_price
  json.url order_url(order, format: :json)
end
