require 'twitter'
require 'yaml'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "eKIaA30v9E2bUGFcRxig"
  config.consumer_secret     = "Z6R2ETzFh9hIRXtY6rsUoC9Xk3hej73HhLxUQN3Jw"
  config.access_token        = "22233272-oXNdt6r8iabRyhXcTxFCUs8FdEtKm3lsLld6g0BVE"
  config.access_token_secret = "OGQKoxmkSJ9L12cYZhwlRTlerfGU4HmtxV4HY6tNgsrEK"
end


results = client.search("marry me", :result_type => "recent").take(20).collect do |tweet|
  "#{tweet.user.screen_name}: #{tweet.text}"
end

results.each do |result|
	puts result
end

