require 'net/http'
require 'open-uri'
require 'json'
require 'awesome_print'
require 'pry'

api_key = "4WKCVApBKneEgGkReH1BHrkIjLHpPedx"
page_num = "1"
url = "https://app.ticketmaster.com/discovery/v2/events.json?apikey=#{api_key}&city=london&size=100&page=#{page_num}"

uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
json_response = JSON.parse(response.body)
ap json_response

NAMES_ARRAY = []
data = json_response["_embedded"]["events"]
data.each { |hash| NAMES_ARRAY.push(hash["name"]) }

# binding.pry