class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :store_id
      t.integer :user_id
      t.string :name
      t.decimal :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
