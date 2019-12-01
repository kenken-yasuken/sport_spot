class RemoveSportIdFromSports < ActiveRecord::Migration[5.2]
  def change
    remove_column :sports, :sport_id, :integer
  end
end
