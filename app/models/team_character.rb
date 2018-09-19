class TeamCharacter < ActiveRecord::Base
  belongs_to :team
  belongs_to :character
end
