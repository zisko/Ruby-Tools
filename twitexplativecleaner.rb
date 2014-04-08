require 'twitter'
require 'yaml'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "eKIaA30v9E2bUGFcRxig"
  config.consumer_secret     = "Z6R2ETzFh9hIRXtY6rsUoC9Xk3hej73HhLxUQN3Jw"
  config.access_token        = "22233272-oXNdt6r8iabRyhXcTxFCUs8FdEtKm3lsLld6g0BVE"
  config.access_token_secret = "OGQKoxmkSJ9L12cYZhwlRTlerfGU4HmtxV4HY6tNgsrEK"
end

puts client

tweets = client.user_timeline("thezisko")

tweets.each_with_index do |twit, i|
	puts i.to_s + ' ' + twit.text
end

swears = open("en.txt", "r")

swearset = Set.new

for word in swears
	swearset.add(word)
end

file = File.new("out.yaml", "w+")

file.puts YAML::dump(tweets)

file.close

tweets.each do |tweet|
	if tweet.text.split(' ').to_set.intersect?(swearset)
		puts "--"*10 + tweet.text
	end
end