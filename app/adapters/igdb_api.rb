class IgdbApi

  def self.get_games(term)
    results = Unirest.get "https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name%2Csummary%2Cgame_modes%2Cthemes%2Cgenres%2Crelease_dates%2Ccover&limit=20&offset=0&search=#{term}",
    headers:{
      "X-Mashape-Key" => "LC6dJEpGZVmshUoieKLHL6Gumqwwp1rTJmvjsnJhpSSyDsSUd7",
      "Accept" => "application/json"
    }

    results.body.each do |result|
      if result["release_dates"]
        Game.find_or_create_by(title: result["name"], year: result["release_dates"][0]["human"][0..3])
      else
        Game.find_or_create_by(title: result["name"], year: "No Year Available")
      end
    end
  end

end
