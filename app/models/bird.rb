class Bird < ApplicationRecord
    has_many :sightings, class_name: "sighting", foreign_key: "reference_id"
    has_one :locations, through: :sightings, source: :sightings_table_foreign_key_to_locations_table
end