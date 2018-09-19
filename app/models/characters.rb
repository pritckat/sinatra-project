class Character < ActiveRecord::Base
  has_many :team_characters
  has_many :teams, through: :team_characters
end
