class RemoveUserRacesIdFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :user_races_id, :integer
  end
end
