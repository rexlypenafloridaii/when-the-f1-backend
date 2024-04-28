class RenameRaceIdToUserRacesId < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :race_id, :user_races_id
  end
end
