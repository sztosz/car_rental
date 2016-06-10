json.array!(@car_rents) do |car_rent|
  json.extract! car_rent, :id, :date_from, :date_to, :price, :customer_id, :car_id
  json.url car_rent_url(car_rent, format: :json)
end
