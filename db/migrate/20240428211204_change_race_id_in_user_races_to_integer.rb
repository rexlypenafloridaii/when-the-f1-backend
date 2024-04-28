class ChangeRaceIdInUserRacesToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :user_races, :race_id, "numeric USING CAST(race_id AS numeric)"
    change_column :user_races, :race_id, :integer
  end
end
