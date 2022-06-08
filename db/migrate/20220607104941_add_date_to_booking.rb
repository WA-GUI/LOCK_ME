class AddDateToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :date, :Date
  end
end
