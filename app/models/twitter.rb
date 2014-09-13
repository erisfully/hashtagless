class Twitter

  def create_twitter_client
    Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['CONSUMER_API_KEY']
      config.consumer_secret = ENV['CONSUMER_API_SECRET']
      config.access_token = current_user.twitter_token
      config.access_token_secret = current_user.twitter_secret
    end
  end

end






