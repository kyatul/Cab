class CreateCarsAvailables < ActiveRecord::Migration
  def change
    create_table :cars_availables do |t|
      t.integer :city_id
      t.integer :car_id

      t.timestamps null: false
    end
  end
end
