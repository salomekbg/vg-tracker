class RemoveTitleFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :title, :string
  end
end
