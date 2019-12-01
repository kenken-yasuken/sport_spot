class AddColumnSportCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :sport_categories, :sport_id, :integer
    add_column :sport_categories, :category_id, :integer
  end
end
