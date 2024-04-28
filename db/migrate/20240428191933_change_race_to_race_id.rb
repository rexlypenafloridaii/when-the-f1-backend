class ChangeRaceToRaceId < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :race, :race_id
  end
end
