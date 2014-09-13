Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['CONSUMER_API_KEY'], ENV['CONSUMER_API_SECRET']
end