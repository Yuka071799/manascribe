class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.text :logo
      t.text :detail
      t.text :homepage_link
      t.text :unsubscription

      t.timestamps
    end
  end
end
