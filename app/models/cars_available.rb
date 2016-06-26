class CarsAvailable < ActiveRecord::Base
  belongs_to :car
  belongs_to :city
end
