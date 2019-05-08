class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :number
      t.references :member
      t.integer :vehicle_type

      t.timestamps
    end
  end
end
