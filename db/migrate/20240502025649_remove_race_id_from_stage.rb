class RemoveRaceIdFromStage < ActiveRecord::Migration[7.1]
  def change
    remove_column :stages, :race_id, :integer
  end
end
