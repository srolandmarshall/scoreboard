class CreateBets < ActiveRecord::Migration[7.0]
  def change
    create_table :bets do |t|
      t.references :game, null: false, foreign_key: true
      t.string :type
      t.boolean :active, default: false
      t.string :status, default: 'Pending'

      t.timestamps
    end
  end
end
