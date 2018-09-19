class AddDefaultToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :default, :boolean
  end
end
