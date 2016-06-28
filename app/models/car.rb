class Car < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_many :available_in_cities, class_name: CarsAvailable, foreign_key: "car_id", dependent: :destroy
end
