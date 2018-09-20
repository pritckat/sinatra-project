class Team < ActiveRecord::Base
  belongs_to :user
  has_many :team_characters
  has_many :characters, through: :team_characters

  def team_composition
    support = self.characters.support.count
    tank = self.characters.tank.count
    damage = self.characters.damage.count
    return "(#{support} - #{tank} - #{damage})"
  end
end
