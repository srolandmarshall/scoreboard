class AddAmountToBet < ActiveRecord::Migration[7.0]
  def change
    add_column :bets, :amount, :numeric, default: 0.0, precision: 12, scale: 2
  end
end
