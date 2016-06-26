class RenameColumnInTrip < ActiveRecord::Migration
  def change
    rename_column :trips, :to_city_id, :destination_city_id
  end
end
