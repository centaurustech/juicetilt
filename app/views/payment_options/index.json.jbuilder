json.array!(@payment_options) do |payment_option|
  json.extract! payment_option, :id, :amount, :amount_display, :description, :shipping_desc, :delivery_desc, :limit
  json.url payment_option_url(payment_option, format: :json)
end
