class ReaddCapacityToRestaurant < ActiveRecord::Migration[5.1]

  def change
    change_table :restaurants do |t|
      t.integer :capacity, :default => 100
    end
  end

end
