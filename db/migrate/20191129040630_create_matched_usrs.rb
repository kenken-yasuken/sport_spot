class CreateMatchedUsrs < ActiveRecord::Migration[5.2]
  def change
    create_table :matched_users do |t|
      t.integer :trainee_user_id
      t.integer :trainer_user_id
      t.integer :mutual_sports_id
      t.integer :mutual_category_id
      t.integer :room_id
      t.timestamps
    end
  end
end
