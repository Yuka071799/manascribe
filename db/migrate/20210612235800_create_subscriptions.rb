class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :service_id
      t.integer :price
      t.date :date_start
      t.date :date_end
      t.boolean :remind
      t.text :memo 

      t.timestamps
    end
  end
end
