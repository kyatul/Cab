class AddTravelTimeToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :travel_time, :float
  end
end
