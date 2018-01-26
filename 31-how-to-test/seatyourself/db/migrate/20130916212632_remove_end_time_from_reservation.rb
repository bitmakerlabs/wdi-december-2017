class RemoveEndTimeFromReservation < ActiveRecord::Migration[5.1]
  def up
    remove_column :reservations, :end_time
  end

  def down
    add_column :reservations, :end_time, :datetime
  end
end
