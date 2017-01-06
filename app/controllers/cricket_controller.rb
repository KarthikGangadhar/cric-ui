require 'httparty'
require 'json'

class CricketController < ApplicationController
  def scores
    cricApires = CricApi.new('http://localclbs-Mac-mini-2.local:1729', 0)
    @cricketvar = cricApires.cricket
  end
end

class CricApi
  include HTTParty
  base_uri 'http://localclbs-Mac-mini-2.local:1729'

  def initialize(service, page)
    @options = { query: {site: service, page: page} }
  end

  def cricket
    self.class.get("/api/cricket", @options)
  end

  def users
    self.class.get("/api/matchCalendar", @options)
  end
end
