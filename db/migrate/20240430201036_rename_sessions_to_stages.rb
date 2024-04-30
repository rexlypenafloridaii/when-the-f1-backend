class RenameSessionsToStages < ActiveRecord::Migration[7.1]
  def change
    rename_table :sessions, :stages
  end
end
