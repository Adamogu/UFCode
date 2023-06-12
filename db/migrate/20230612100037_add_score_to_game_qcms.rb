class AddScoreToGameQcms < ActiveRecord::Migration[7.0]
  def change
    add_column :game_qcms, :score, :integer
  end
end
