class AddEjectedToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :ejected, :boolean, default: false
  end
end
