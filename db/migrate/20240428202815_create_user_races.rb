class CreateUserRaces < ActiveRecord::Migration[7.1]
  def change
    create_table :user_races do |t|
      t.integer :user_id
      t.string :race_id

      t.timestamps
    end
  end
end
