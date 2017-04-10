class AddColumnsToGenrefications < ActiveRecord::Migration[5.0]
  def change
    add_column :genres, :mode_id, :integer
    add_column :genres, :theme_id, :integer
  end
end
