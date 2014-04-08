require 'Twitter'


client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "eKIaA30v9E2bUGFcRxig"
  config.consumer_secret     = "Z6R2ETzFh9hIRXtY6rsUoC9Xk3hej73HhLxUQN3Jw"
  config.access_token        = "22233272-oXNdt6r8iabRyhXcTxFCUs8FdEtKm3lsLld6g0BVE"
  config.access_token_secret = "OGQKoxmkSJ9L12cYZhwlRTlerfGU4HmtxV4HY6tNgsrEK"
end

client.sample do |object|
  if object.is_a?(Twitter::Tweet) 
    if object.text.include? "RT"
      puts object.text
    end
  end
end


require 'gruff'
g = Gruff::Line.new
g.title = 'Wow!  Look at this!'
g.labels = { 0 => '5/6', 1 => '5/15', 2 => '5/24', 3 => '5/30', 4 => '6/4',
             5 => '6/12', 6 => '6/21', 7 => '6/28' }
g.data :Jimmy, [25, 36, 86, 39, 25, 31, 79, 88]
g.data :Charles, [80, 54, 67, 54, 68, 70, 90, 95]
g.data :Julie, [22, 29, 35, 38, 36, 40, 46, 57]
g.data :Jane, [95, 95, 95, 90, 85, 80, 88, 100]
g.data :Philip, [90, 34, 23, 12, 78, 89, 98, 88]
g.data :Arthur, [5, 10, 13, 11, 6, 16, 22, 32]
g.write('exciting.png')