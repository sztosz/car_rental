json.array!(@car_manufacturers) do |car_manufacturer|
  json.extract! car_manufacturer, :id, :name
  json.url car_manufacturer_url(car_manufacturer, format: :json)
end
