class ChangeCharacterClass < ActiveRecord::Migration[5.0]
  def change
    rename_column :characters, :class, :character_class
  end
end
