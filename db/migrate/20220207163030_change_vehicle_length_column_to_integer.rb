class ChangeVehicleLengthColumnToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column(:customers, :vehicle_length, :integer)
  end
end
