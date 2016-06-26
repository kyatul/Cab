class City < ActiveRecord::Base
  has_many :routes, class_name: Route, foreign_key: "source_city_id"
end
