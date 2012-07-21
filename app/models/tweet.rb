class Tweet < ActiveRecord::Base
  attr_accessible :content, :created
  
  STREAM_TO_GET = 'windycityrails'
  
  def self.get_windy_city_rails_tweets
      Twitter.user_timeline(STREAM_TO_GET, {:count => 5, :trim_user => 't'}).each do |t|
        created = t.created_at
        unless Tweet.exists?(['created=?', created])
          Tweet.create({:content => t.text, :created => created})
        end
      end
  end  
end