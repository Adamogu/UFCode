class ChangeDefaultColumnScore < ActiveRecord::Migration[7.0]
  def change
    change_column :user_games, :score, :integer, default: 0
  end
end
