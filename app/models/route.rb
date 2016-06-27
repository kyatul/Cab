class Route < ActiveRecord::Base
  belongs_to :source_city, class_name: City, foreign_key: "source_city_id"
  belongs_to :destination_city, class_name: City, foreign_key: "destination_city_id"

  def self.source_city_ids
    self.distinct.pluck(:source_city_id)
  end

  def self.destination_city_ids(source_city_id)
    self.where(source_city_id: source_city_id).pluck(:destination_city_id)
  end
end
