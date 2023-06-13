class RemoveColumnComputedScore < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :computed_score
  end
end
