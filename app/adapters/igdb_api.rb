class IgdbApi

  def self.get_games(term)
    games = Unirest.get "https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name%2Csummary%2Cgame_modes%2Cthemes%2Cgenres%2Crelease_dates%2Ccover&limit=20&offset=0&search=#{term}",
    headers:{
      "X-Mashape-Key" => "LC6dJEpGZVmshUoieKLHL6Gumqwwp1rTJmvjsnJhpSSyDsSUd7",
      "Accept" => "application/json"
    }

    games.body.each do |game|
      if game["name"] && game["release_dates"] && game["summary"] && game["cover"]
        entry = Game.find_or_create_by(name: game["name"], year: game["release_dates"][0]["human"][0..3], summary: game["summary"], cover: game["cover"]["url"])
      elsif !game["release_dates"] && !game["summary"] && !game["cover"]
        entry = Game.find_or_create_by(name: game["name"], year: "No Year Available", summary: "No Summary Available", cover: "")
      elsif !game["release_dates"] && !game["summary"]
        entry = Game.find_or_create_by(name: game["name"], year: "No Year Available", summary: "No Summary Available", cover: game["cover"]["url"])
      elsif !game["release_dates"] && !game["cover"]
        entry = Game.find_or_create_by(name: game["name"], year: "No Year Available", summary: game["summary"], cover: "")
      elsif !game["summary"] && !game["cover"]
        entry = Game.find_or_create_by(name: game["name"], year: game["release_dates"][0]["human"][0..3], summary: "No Summary Available", cover: "")
      elsif !game["release_dates"]
        entry = Game.find_or_create_by(name: game["name"], year: "No Year Available", summary: game["summary"], cover: game["cover"]["url"])
      elsif !game["summary"]
        entry = Game.find_or_create_by(name: game["name"], year: game["release_dates"][0]["human"][0..3], summary: "No Summary Available", cover: game["cover"]["url"])
      elsif !game["cover"]
        entry = Game.find_or_create_by(name: game["name"], year: game["release_dates"][0]["human"][0..3], summary: game["summary"], cover: "")
      end

      if game["genres"]
        genre_names = game["genres"].map do |game_genre|
          IgdbApi.get_genres.select { |genre| genre if genre["id"] == game_genre}
        end.flatten.map {|genre| genre["name"]}

        genre_names.each do |name|
          genre = Genre.find_by(name: name)
          Genrefication.find_or_create_by(game_id: entry.id, genre_id: genre.id)
        end
      end
      
    end
  end

  def self.get_genres
    genres = Unirest.get "https://igdbcom-internet-game-database-v1.p.mashape.com/genres/?fields=name&limit=50",
    headers:{
      "X-Mashape-Key" => "LC6dJEpGZVmshUoieKLHL6Gumqwwp1rTJmvjsnJhpSSyDsSUd7"
    }
    genres.body
  end

end
