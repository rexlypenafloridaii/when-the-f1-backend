class ChangeRaceIdToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :race_id, "numeric USING CAST(race_id AS numeric)"
    change_column :users, :race_id, :integer
  end
end
