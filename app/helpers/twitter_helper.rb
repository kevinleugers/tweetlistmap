module TwitterHelper
  def get_tweets(user)
    client = get_client(user)
    #client.list("cincy-street-food-vendors").to_yaml
    client.friends.first.name
  end

  def get_client(user)
  	Twitter::REST::Client.new do |config|
  		config.consumer_key = ENV['TWITTER_KEY']
  		config.consumer_secret = ENV['TWITTER_SECRET']
  		config.access_token = user.token
  		config.access_token_secret = user.secret
  	end
  end

end