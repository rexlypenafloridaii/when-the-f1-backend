class AddRaceIdtoSessions < ActiveRecord::Migration[7.1]
  def change
    add_column :sessions, :race_id, :integer
  end
end
