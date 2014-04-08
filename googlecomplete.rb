require 'open-uri'
require 'json'

puts "Welcome to the autocompleter! This uses google's auto complete API to complete words for you! Type your half word:"

input = gets.chomp()

query = open("http://suggestqueries.google.com/complete/search?client=firefox&q=#{input}").read()

results = JSON.parse(query)


puts "-" * 20
puts "results for: #{input}"
puts "-" * 20
puts results