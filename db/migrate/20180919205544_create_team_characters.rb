class CreateTeamCharacters < ActiveRecord::Migration
  def change
    create_table :team_characters do |t|
      t.integer :team_id
      t.integer :character_id
    end
  end
end
