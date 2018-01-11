class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float  :cost
      t.text   :description
      t.string :img_url
      t.timestamps
    end
  end
end
