class RemoveIdColumnsFromTeamsCharacters < ActiveRecord::Migration
  def change
    remove_column :characters, :team_id
    remove_column :characters, :user_id
  end
end
