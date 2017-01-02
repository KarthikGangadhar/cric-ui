require 'httparty'
require 'json'

class CricApi
  include HTTParty
  base_uri 'http://localhost:1729/'

  def initialize(service, page)
    @options = { query: {site: service, page: page} }
  end

  def cricket
    self.class.get("/api/cricket", @options)
  end

  def matchCalendar
    self.class.get("/api/matchCalendar", @options)
  end

  def matches
    self.class.get("/api/matches", @options)
  end
  
  def cricketScore
    self.class.get("/api/cricketScore", @options)
  end
  
  def playerStats
    self.class.get("/api/playerStats", @options)
  end
  
  def commentry
    self.class.get("/api/cricketCommentary", @options)
  end
  
  def news
    self.class.get("/api/cricketNews", @options)
  end

end