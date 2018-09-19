overwatch_characters_list = {
  "Bastion" => {
    role: "Damage",
    default: true
  },
  "Doomfist" => {
    role: "Damage",
    default: true
  },
  "Genji" => {
    role: "Damage",
    default: true
  },
  "Hanzo" => {
    role: "Damage",
    default: true
  },
  "Junkrat" => {
    role: "Damage",
    default: true
  },
  "McCree" => {
    role: "Damage",
    default: true
  },
  "Mei" => {
    role: "Damage",
    default: true
  },
  "Pharah" => {
    role: "Damage",
    default: true
  },
  "Reaper" => {
    role: "Damage",
    default: true
  },
  "Soldier: 76" => {
    role: "Damage",
    default: true
  },
  "Sombra" => {
    role: "Damage",
    default: true
  },
  "Symmetra" => {
    role: "Damage",
    default: true
  },
  "Torbjörn" => {
    role: "Damage",
    default: true
  },
  "Tracer" => {
    role: "Damage",
    default: true
  },
  "Widowmaker" => {
    role: "Damage",
    default: true
  },
  "D. Va" => {
    role: "Tank",
    default: true
  },
  "Orisa" => {
    role: "Tank",
    default: true
  },
  "Reinhardt" => {
    role: "Tank",
    default: true
  },
  "Roadhog" => {
    role: "Tank",
    default: true
  },
  "Winston" => {
    role: "Tank",
    default: true
  },
  "Wrecking Ball" => {
    role: "Tank",
    default: true
  },
  "Zarya" => {
    role: "Tank",
    default: true
  },
  "Ana" => {
    role: "Support",
    default: true
  },
  "Brigitte" => {
    role: "Support",
    default: true
  },
  "Lúcio" => {
    role: "Support",
    default: true
  },
  "Mercy" => {
    role: "Support",
    default: true
  },
  "Moira" => {
    role: "Support",
    default: true
  },
  "Zenyatta" => {
    role: "Support",
    default: true
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
