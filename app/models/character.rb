class Character < ApplicationRecord
  validates_presence_of :character_name, :level, :character_class
end
