class AddColumnSportCategoryId < ActiveRecord::Migration[5.2]
  def change
    add_column :sports, :sport_category_id, :integer
    remove_column :sports, :category_id, :integer
  end
end
