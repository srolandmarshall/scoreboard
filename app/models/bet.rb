class Bet < ApplicationRecord
  belongs_to :game

  def odds_as_decimal
    odds = self.odds
    if odds > 0
      odds = 1+(odds/100.0)
    else
      odds = 1-(100.0/odds)
    end
  end

end