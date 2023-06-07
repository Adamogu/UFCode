class ChangeColumnStep < ActiveRecord::Migration[7.0]
  def change
    change_column :user_games, :step, :integer, default: 0
  end
end
