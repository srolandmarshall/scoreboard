class ChangeBetTypeToForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_column :bets, :bet_type
    add_reference :bets, :bet_type, index: true, foreign_key: true
  end
end
