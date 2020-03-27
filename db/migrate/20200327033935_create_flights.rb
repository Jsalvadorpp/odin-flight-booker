class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.datetime :flight_date
      t.time :flight_duration

      t.timestamps
    end
  end
end
