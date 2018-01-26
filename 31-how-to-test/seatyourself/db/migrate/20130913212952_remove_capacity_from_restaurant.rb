class RemoveCapacityFromRestaurant < ActiveRecord::Migration[5.1]
  def up
    remove_column :restaurants, :capacity
  end

  def down
    add_column :restaurants, :capacity, :integer
  end
end
