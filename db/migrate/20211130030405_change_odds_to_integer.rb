class ChangeOddsToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :bets, :odds, :integer, default: 100
  end
end
