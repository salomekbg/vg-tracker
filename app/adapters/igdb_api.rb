class IgdbApi

  def self.get_games(term)
    games = Unirest.get "https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name%2Csummary%2Cgame_modes%2Cthemes%2Cgenres%2Crelease_dates%2Ccover&limit=20&offset=0&search=#{term}",
    headers:{
      "X-Mashape-Key" => "LC6dJEpGZVmshUoieKLHL6Gumqwwp1rTJmvjsnJhpSSyDsSUd7",
      "Accept" => "application/json"
    }

    games.body.each do |game|
      if game["release_dates"]
        Game.find_or_create_by(name: game["name"], year: game["release_dates"][0]["human"][0..3], summary: game["summary"], cover: game["cover"]["url"])
      else
        Game.find_or_create_by(name: game["name"], year: "No Year Available", summary: game["summary"], cover: game["cover"]["url"])
      end
    end
  end

  def self.get_genres
    Unirest.get "https://igdbcom-internet-game-database-v1.p.mashape.com/genres/?fields=name&limit=50",
    headers:{
      "X-Mashape-Key" => "LC6dJEpGZVmshUoieKLHL6Gumqwwp1rTJmvjsnJhpSSyDsSUd7"
    }
  end

end
