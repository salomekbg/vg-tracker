User.create(username: "nick", email_address: "nick@valentine.com", password: "diamond", password_confirmation: "diamond", role: "admin")
User.create(username: "sora", email_address: "sora@paopufruit.com", password: "kairi", password_confirmation: "kairi")
User.create(username: "sarah", email_address: "sarah@kerrigan.com", password: "raynor", password_confirmation: "raynor")

Game.create(title: "Fallout 4", year: 2015)
Game.create(title: "Kingdom Hearts", year: 2003)
Game.create(title: "Starcraft", year: 1998)

Genre.create(name: "RPG")
Genre.create(name: "RTS")
Genre.create(name: "FPS")

Platform.create(name: "PC")
Platform.create(name: "Xbox One")
Platform.create(name: "PlayStation 4")
Platform.create(name: "PlayStation 2")
Platform.create(name: "Mac")

Source.create(name: "Steam")
Source.create(name: "GOG")
Source.create(name: "Origin")
Source.create(name: "GameStop")
Source.create(name: "Blizzard")

Classification.create(game_id: 1, genre_id: 1)
Classification.create(game_id: 1, genre_id: 3)
Classification.create(game_id: 2, genre_id: 1)
Classification.create(game_id: 3, genre_id: 2)

Library.create(user_id: 1, game_id: 1, platform_id: 1, source_id: 1, status: "in progress", personal_rating: 7, hours_played: 50, notes: "Pretty good, but needs mods.")
Library.create(user_id: 2, game_id: 2, platform_id: 2, source_id: 4, status: "completed", personal_rating: 9, hours_played: 60, notes: "Great game!")
Library.create(user_id: 3, game_id: 3, platform_id: 3, source_id: 1, status: "in progress", personal_rating: 8, hours_played: 50, notes: "I need to move on...")
Library.create(user_id: 1, game_id: 2, platform_id: 4, source_id: 4, status: "in progress", personal_rating: 3, hours_played: 20, notes: "Too hard")
