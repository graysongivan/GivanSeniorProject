class CreateStoreToVisits < ActiveRecord::Migration
  def change
    create_table :store_to_visits do |t|
      t.integer :store_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
