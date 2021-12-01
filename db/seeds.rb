# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

bet_types = [
      { name: 'Over/Under', description: 'Total of the two scores of the team will fall over/under this number.' },
      { name: 'Moneyline', description: 'Team with the higher score wins the bet. Usually, ties lose.' },
      { name: 'Spread', description: 'Pick a side, subtract these points from that side. Adjust score determines bet victory.' },
      { name: 'Special', description: 'Some bets are special, like a TD Scorer or Strike Out Count. This is for that until I figure out how to code those.' }
]
bet_types.each do |bet_type|
  Bet::Type.create!(bet_type)
end