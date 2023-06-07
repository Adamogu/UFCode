class AddColumnToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :language, :string
    add_column :games, :level, :string
  end
end
