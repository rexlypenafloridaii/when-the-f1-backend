class CreateRaceStages < ActiveRecord::Migration[7.1]
  def change
    create_table :race_stages do |t|
      t.integer :race_id
      t.integer :stage_id

      t.timestamps
    end
  end
end
