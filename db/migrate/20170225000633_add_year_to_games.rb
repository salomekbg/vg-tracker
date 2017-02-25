class AddYearToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :year, :integer
  end
end
