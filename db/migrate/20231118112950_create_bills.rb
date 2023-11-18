class CreateBills < ActiveRecord::Migration[7.1]
  def change
    create_table :bills do |t|
      t.string :meal_item_1
      t.string :meal_item_2
      t.integer :price_item_1
      t.integer :price_item_2

      t.timestamps
    end
  end
end
