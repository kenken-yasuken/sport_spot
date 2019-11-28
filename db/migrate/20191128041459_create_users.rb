class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :family_name, null:false
      t.string :first_name, null:false
      t.string :family_name_kana
      t.string :first_name_kana
      t.string :nickname, null:false
      t.integer :gender, null:false
      t.integer :age, null:false
      t.date :birthday
      t.integer :user_type_id, null:false
      t.string :encrypted_password, null:false
      t.timestamps
    end
  end
end
