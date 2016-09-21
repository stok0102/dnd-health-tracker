class FixCharacterName < ActiveRecord::Migration[5.0]
  def change
    rename_column :characters, :name, :character_name
  end
end
