require 'open-uri'
require 'json'

ipinjson = open("http://ipinfo.io/json").read() #opens the uri object and then reads the string it sent

returnedinfo = JSON.parse(ipinjson) #ruby gem to parse out jshon into a hash

puts returnedinfo #print out the new hash object

puts "\n\n---------------------------------------------------" #for formatting
puts "\n\tYour IP address is : #{returnedinfo["ip"]}"# print ip address from the parsed-from-json hash