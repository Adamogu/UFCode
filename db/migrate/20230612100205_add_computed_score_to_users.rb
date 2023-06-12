class AddComputedScoreToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :computed_score, :integer
  end
end
