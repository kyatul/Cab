class Car < ActiveRecord::Base
  has_many :available_in_cities, class_name: CarsAvailable, foreign_key: "car_id", dependent: :destroy
end
