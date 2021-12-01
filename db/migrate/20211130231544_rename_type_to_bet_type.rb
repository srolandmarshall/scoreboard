class RenameTypeToBetType < ActiveRecord::Migration[7.0]
  def change
    rename_column :bets, :type, :bet_type
  end
end
