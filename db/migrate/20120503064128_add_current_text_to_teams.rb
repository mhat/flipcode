class AddCurrentTextToTeams < ActiveRecord::Migration
  def up
    add_column :teams, :current_text, :string
  end

  def down
    remove_column :teams, :current_text
  end
end
