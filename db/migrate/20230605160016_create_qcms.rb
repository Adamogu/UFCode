class CreateQcms < ActiveRecord::Migration[7.0]
  def change
    create_table :qcms do |t|
      t.text :question
      t.string :answer_one
      t.string :answer_two
      t.string :answer_true
      t.string :language
      t.integer :level

      t.timestamps
    end
  end
end
