class Character < ApplicationRecord
  validates_presence_of :name, :race, :character_class, :alignment, :level, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hit_points, :armor_class, :fortitude, :reflex, :will
end
