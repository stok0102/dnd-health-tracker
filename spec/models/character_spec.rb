require "rails_helper"

describe Character do
  it { should validate_presence_of :name }
  it { should validate_presence_of :race }
  it { should validate_presence_of :character_class }
  it { should validate_presence_of :alignment }
  it { should validate_presence_of :level }
  it { should validate_presence_of :strength }
  it { should validate_presence_of :dexterity }
  it { should validate_presence_of :constitution }
  it { should validate_presence_of :intelligence }
  it { should validate_presence_of :wisdom }
  it { should validate_presence_of :charisma }
  it { should validate_presence_of :hit_points }
  it { should validate_presence_of :armor_class }
  it { should validate_presence_of :fortitude }
  it { should validate_presence_of :reflex }
  it { should validate_presence_of :will }
end
