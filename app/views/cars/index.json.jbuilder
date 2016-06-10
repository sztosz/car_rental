json.array!(@cars) do |car|
  json.extract! car, :id, :car_model_id, :plate, :price
  json.url car_url(car, format: :json)
end
