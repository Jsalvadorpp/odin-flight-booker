class AddAtrributes < ActiveRecord::Migration[6.0]
  def change
    add_column :passengers, :name , :string

    add_reference :bookings, :passenger , foreign_key: true
    add_reference :bookings, :flight , foreign_key: true
  end
end
