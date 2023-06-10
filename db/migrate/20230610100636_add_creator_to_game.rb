class AddCreatorToGame < ActiveRecord::Migration[7.0]
  def change
    add_reference :games, :user, foreign_key: true
  end
end
