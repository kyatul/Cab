class CarsAvailable < ActiveRecord::Base
  validates :rate_per_km, presence: true
  
  belongs_to :car
  belongs_to :city
end
