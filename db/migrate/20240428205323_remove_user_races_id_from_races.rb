class RemoveUserRacesIdFromRaces < ActiveRecord::Migration[7.1]
  def change
    remove_column :races, :user_races_id, :integer
  end
end
