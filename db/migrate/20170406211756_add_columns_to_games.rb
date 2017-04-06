class AddColumnsToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :name, :string
    add_column :games, :summary, :string
    add_column :games, :cover, :string

  end
end
