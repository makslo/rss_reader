require "bundler/setup"
require "sinatra"
require "feedjira"
require 'json'

get "/" do
  url = "https://www.reddit.com/r/news/.rss"
  feed = Feedjira::Feed.fetch_and_parse url
  # content_type :json

  
  erb :index, :layout => :main, :locals => {:feed => feed}
end