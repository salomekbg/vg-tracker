class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :status
      t.integer :rating
      t.integer :hours_played
      t.string :number_of_players
      t.text :notes
      t.integer :user_id

      t.timestamps
    end
  end
end
