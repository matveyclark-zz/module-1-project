 require_relative '../../get_requester.rb'
 require 'pry'

 class Venue 

        attr_reader :name 

         @@all=[]

    def initialize(name)
        @name = name 
        @@all << self
    end 

    def self.all
        @@all
    end 
    
    VENUE_NAMES.uniq.each{ |venue_name| Venue.new(venue_name) }
    binding.pry
 end 

 