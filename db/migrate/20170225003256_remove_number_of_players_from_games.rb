class RemoveNumberOfPlayersFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :number_of_players, :string
  end
end
