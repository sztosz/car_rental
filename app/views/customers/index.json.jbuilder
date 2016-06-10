json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :surname, :pesel, :licence, :street, :city, :zip
  json.url customer_url(customer, format: :json)
end
