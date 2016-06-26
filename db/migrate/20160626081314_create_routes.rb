class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :source_city_id
      t.integer :destination_city_id

      t.timestamps null: false
    end
  end
end
