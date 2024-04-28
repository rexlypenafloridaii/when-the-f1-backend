class RenameSessionIdToUserRacesId < ActiveRecord::Migration[7.1]
  def change
    rename_column :races, :session_id, :user_races_id
  end
end
