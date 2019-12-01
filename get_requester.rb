require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'

api_key = ENV["API_KEY"]
page_num = "5"
url = "https://app.ticketmaster.com/discovery/v2/events.json?apikey=#{api_key}&city=london&size=100&page=#{page_num}"

uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
json_response = JSON.parse(response.body)
ap json_response