class AddColumnSportCategoryIdAgain < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :sport_category_id, :integer
  end
end
