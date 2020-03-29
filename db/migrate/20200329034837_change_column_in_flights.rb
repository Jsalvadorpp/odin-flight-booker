class ChangeColumnInFlights < ActiveRecord::Migration[6.0]
  def change
    change_column :flights , :flight_duration , :integer
  end
end
