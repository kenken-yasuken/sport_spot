class CreateSportCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :sport_categories do |t|

      t.timestamps
    end
  end
end
