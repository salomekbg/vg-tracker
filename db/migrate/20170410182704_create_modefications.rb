class CreateModefications < ActiveRecord::Migration[5.0]
  def change
    create_table :modefications do |t|
      t.integer :game_id
      t.integer :mode_id

      t.timestamps
    end
  end
end
