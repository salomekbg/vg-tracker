class CreateAcquisitions < ActiveRecord::Migration[5.0]
  def change
    create_table :acquisitions do |t|
      t.integer :game_id
      t.integer :source_id

      t.timestamps
    end
  end
end
