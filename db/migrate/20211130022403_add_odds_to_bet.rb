class AddOddsToBet < ActiveRecord::Migration[7.0]
  def change
    add_column :bets, :odds, :decimal, default: 1.0, precision: 12, scale: 2
  end
end
