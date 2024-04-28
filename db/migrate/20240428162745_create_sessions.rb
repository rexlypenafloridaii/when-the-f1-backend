class CreateSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :sessions do |t|
      t.string :name
      t.string :location
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
