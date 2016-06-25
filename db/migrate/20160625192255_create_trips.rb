class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :type
      t.integer :from_city_id
      t.integer :to_city_id

      t.timestamps null: false
    end
  end
end
