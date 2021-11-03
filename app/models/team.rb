class Team < ApplicationRecord

  def full_name
    "#{self.geoname} #{self.name}"
  end

end
