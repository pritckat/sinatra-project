overwatch_characters_list = {
  "Bastion" => {
    role: "Damage"
  },
  "Doomfist" => {
    role: "Damage"
  },
  "Genji" => {
    role: "Damage"
  },
  "Hanzo" => {
    role: "Damage"
  },
  "Junkrat" => {
    role: "Damage"
  },
  "McCree" => {
    role: "Damage"
  },
  "Mei" => {
    role: "Damage"
  },
  "Pharah" => {
    role: "Damage"
  },
  "Reaper" => {
    role: "Damage"
  },
  "Soldier: 76" => {
    role: "Damage"
  },
  "Sombra" => {
    role: "Damage"
  },
  "Symmetra" => {
    role: "Damage"
  },
  "Torbjörn" => {
    role: "Damage"
  },
  "Tracer" => {
    role: "Damage"
  },
  "Widowmaker" => {
    role: "Damage"
  },
  "D. Va" => {
    role: "Tank"
  },
  "Orisa" => {
    role: "Tank"
  },
  "Reinhardt" => {
    role: "Tank"
  },
  "Roadhog" => {
    role: "Tank"
  },
  "Winston" => {
    role: "Tank"
  },
  "Wrecking Ball" => {
    role: "Tank"
  },
  "Zarya" => {
    role: "Tank"
  },
  "Ana" => {
    role: "Support"
  },
  "Brigitte" => {
    role: "Support"
  },
  "Lúcio" => {
    role: "Support"
  },
  "Mercy" => {
    role: "Support"
  },
  "Moira" => {
    role: "Support"
  },
  "Zenyatta" => {
    role: "Support"
  }
}

overwatch_characters_list.each do |name, hash|
  c = Character.new
  c.name = name
  hash.each do |attribute, value|
    c[attribute] = value
  end
  c.save
end
