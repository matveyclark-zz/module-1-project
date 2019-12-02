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
json_response

events = json_response["_embedded"]["events"] 

VENUE_NAMES =[]
events.each do |event|
    event["_embedded"]["venues"].each do |venue|
        VENUE_NAMES << venue["name"]
    end 
end 





