Rails.application.config.middleware.use OmniAuth::Builder do |variable|
  provider :google_oauth2, ENV['GOOGLE_CONSUMER_KEY'], ENV['GOOGLE_CONSUMER_SECRET']
end