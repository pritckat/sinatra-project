class Team < ActiveRecord::Base
  belongs_to :user
  has_many :team_characters
  has_many :characters, through: :team_characters
end
