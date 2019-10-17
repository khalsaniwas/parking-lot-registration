class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.string :registration_plate_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
