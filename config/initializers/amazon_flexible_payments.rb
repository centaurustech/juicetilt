AmazonFlexPay.access_key = ENV["AmazonFlexPay_access_key"]
AmazonFlexPay.secret_key = ENV["AmazonFlexPay_secret_key"]
AmazonFlexPay.go_live! if Rails.env.production?