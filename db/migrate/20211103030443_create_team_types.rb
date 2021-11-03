class CreateTeamTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :home_team do |t|
      t.integer :team_id
      t.integer :game_id
      t.timestamps
    end
    create_table :away_team do |t|
      t.integer :team_id
      t.integer :game_id
      t.timestamps
    end
  end
end
