require_relative '../../get_requester.rb'
require 'pry'

class Attraction
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

end

VENUE_NAMES.uniq.each { |name| Attraction.new(name) }

binding.pry
