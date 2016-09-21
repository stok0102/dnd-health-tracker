class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :class
      t.string :alignment
      t.integer :level
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :hit_points
      t.integer :armor_class
      t.integer :fortitude
      t.integer :reflex
      t.integer :will
      t.timestamps
    end
  end
end
