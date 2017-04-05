class IgdbApi

  def self.get_games(term)
    results = Unirest.get "https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name%2Curl%2Csummary%2Cstoryline%2Cgame_modes%2Cthemes%2Cgenres%2Crelease_dates%2Cscreenshots%2Cvideos%2Ccover&limit=20&offset=0&search=#{term}",
    headers:{
      "X-Mashape-Key" => "LC6dJEpGZVmshUoieKLHL6Gumqwwp1rTJmvjsnJhpSSyDsSUd7",
      "Accept" => "application/json"
    }
    results.body
  end

end
