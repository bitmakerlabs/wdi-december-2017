class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :quantity
      t.datetime :made_on

      t.timestamps
    end
  end
end
