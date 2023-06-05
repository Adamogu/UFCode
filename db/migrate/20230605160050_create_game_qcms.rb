class CreateGameQcms < ActiveRecord::Migration[7.0]
  def change
    create_table :game_qcms do |t|
      t.references :game, null: false, foreign_key: true
      t.references :qcm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
