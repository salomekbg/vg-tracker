class CreateThemefications < ActiveRecord::Migration[5.0]
  def change
    create_table :themefications do |t|
      t.integer :game_id
      t.integer :theme_id

      t.timestamps
    end
  end
end
