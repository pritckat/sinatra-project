class Character < ActiveRecord::Base
  has_many :team_characters
  has_many :teams, through: :team_characters

  def self.support
    Character.all.select { |c| c.role == "Support"}
  end

  def self.tank
    Character.all.select { |c| c.role == "Tank"}
  end

  def self.damage
    Character.all.select { |c| c.role == "Damage"}
  end
end
