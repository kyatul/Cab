class City < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_many :routes, class_name: Route, foreign_key: "source_city_id", dependent: :destroy
  has_many :routes_as_destination, class_name: Route, foreign_key: "destination_city_id", dependent: :destroy
  has_many :cars_available, dependent: :destroy
end
