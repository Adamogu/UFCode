class ChangeDefaultValueLevel < ActiveRecord::Migration[7.0]
  def change
    change_column :games, :level, :string, default: "1"
  end
end
