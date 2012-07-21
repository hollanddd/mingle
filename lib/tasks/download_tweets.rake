task :download_tweets => :environment do
  Tweet.get_windy_city_rails_tweets
end