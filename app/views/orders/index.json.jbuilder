json.array!(@orders) do |order|
  json.extract! order, :id, :id, :token, :transaction_id, :address_one, :address_two, :city, :state, :zip, :country, :status, :number, :uuid, :uder_id, :price, :shipping, :tracking_number, :phone, :name, :expiration, :payment_option_id
  json.url order_url(order, format: :json)
end
