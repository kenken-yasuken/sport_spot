class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :room_id
      t.integer :matched_user_id
      t.integer :trainee_user_id
      t.integer :trainer_user_id
      t.text :content
      t.timestamps
    end
  end
end
