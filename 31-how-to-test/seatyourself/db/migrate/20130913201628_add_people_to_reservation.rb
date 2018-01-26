class AddPeopleToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :people, :integer, :default => 1
  end
end
