class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.string :name
      t.integer :sport_id
      t.integer :category_id
      t.timestamps
    end
  end
end
