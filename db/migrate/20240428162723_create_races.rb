class CreateRaces < ActiveRecord::Migration[7.1]
  def change
    create_table :races do |t|
      t.string :location
      t.string :date
      t.string :time
      t.string :session

      t.timestamps
    end
  end
end
