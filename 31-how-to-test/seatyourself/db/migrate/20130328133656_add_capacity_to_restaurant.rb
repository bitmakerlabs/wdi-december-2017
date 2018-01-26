class AddCapacityToRestaurant < ActiveRecord::Migration[5.1]
  def change
    change_table :restaurants do |t|
      t.integer :capacity
    end
  end
end
