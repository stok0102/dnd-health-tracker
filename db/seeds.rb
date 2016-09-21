character_list = [
  ["Cheed", 7, "Wizard"],
  ["Jeffery", 6, "Cleric"],
  ["Party", 7, "Druid"],
  ["Betty ", 7, "Rogue"],
  ["Gerty", 4, "Monk"],
  ["Ach", 3, "Bard"],
  ["Vegazi", 5, "Ranger"]
]

character_list.each do |a, b, c|
  Character.create( character_name: a, level: b, character_class: c)
end
