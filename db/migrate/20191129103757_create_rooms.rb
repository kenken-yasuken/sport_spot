class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :matched_user_id
      t.integer :trainee_user_id
      t.integer :trainer_user_id
      t.timestamps
    end
  end
end
