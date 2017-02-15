class CreateReleases < ActiveRecord::Migration[5.0]
  def change
    create_table :releases do |t|
      t.integer :game_id
      t.integer :platform_id

      t.timestamps
    end
  end
end
