class Game < ApplicationRecord
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'

  def name
    "#{away_team.name} vs. #{home_team.name}"
  end
end
