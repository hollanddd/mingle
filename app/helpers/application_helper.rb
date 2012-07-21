module ApplicationHelper
  def display_content_with_links(tweet)
    tweet.content.gsub(/(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/) {|x| true ? "<a href='#{x}'>#{x}</a>" : x}
  end
end
