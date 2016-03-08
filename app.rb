require "bundler/setup"
require "sinatra"
require "feedjira"

get "/" do
  url = "https://www.reddit.com/r/news/.rss"
  feed = Feedjira::Feed.fetch_and_parse url
  erb :index, :layout => :main, :locals => {:feed => feed}
end