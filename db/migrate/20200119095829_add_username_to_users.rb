class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_name, :string
    add_index :users, :user_name, unique: true
    remove_column :users, :user_id
  end
end
