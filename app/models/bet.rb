class Bet < ApplicationRecord
  belongs_to :game
  has_one :bet_type, class_name: 'Bet::Type'

  def odds_as_decimal
    odds = self.odds
    if odds > 0
      odds = 1+(odds/100.0)
    else
      odds = 1-(100.0/odds)
    end
  end

  def bet_type
    Bet::Type.find(self.bet_type_id)
  end

  def bet_type_name
    self.bet_type.name
  end

  def bet_type_description
    self.bet_type.description
  end

end