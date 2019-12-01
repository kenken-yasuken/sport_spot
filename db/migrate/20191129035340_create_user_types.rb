class CreateUserTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_types do |t|
      t.integer :user_type, null:false
      t.integer :sport_id, null:false
      t.timestamps
    end
  end
end
