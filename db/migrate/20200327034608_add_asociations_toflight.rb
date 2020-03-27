class AddAsociationsToflight < ActiveRecord::Migration[6.0]
  def change
    add_reference :flights , :from_airport , references: :airports
    add_foreign_key :flights , :airports , column: :from_airport_id

    add_reference :flights , :to_airport , references: :airports
    add_foreign_key :flights , :airports , column: :to_airport_id
  end
end
