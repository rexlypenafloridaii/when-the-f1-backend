class ChangeSessionIdToInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :races, :session_id, "numeric USING CAST(session_id AS numeric)"
    change_column :races, :session_id, :integer
  end
end
