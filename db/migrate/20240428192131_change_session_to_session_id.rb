class ChangeSessionToSessionId < ActiveRecord::Migration[7.1]
  def change
    rename_column :races, :session, :session_id
  end
end
