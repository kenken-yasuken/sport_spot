class RenameColumnTitleSports < ActiveRecord::Migration[5.2]
  def change
    rename_column :sports, :sport_id, :sport_id
  end
end
