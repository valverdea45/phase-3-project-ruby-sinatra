
puts "🌱 Seeding spices..."
require "pry"


ivysaur = Pokemon.create(name: "ivysaur", level: rand(1..100), sprite: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png")

ivysaur.pokemon_skills.create(name: "Tackle", description: "user charges enemy", power_points: rand(5..30))

ivysaur.pokemon_skills.create(name: "Vine Whip", description: "whips enemy with vine", power_points: rand(5..30))

eevee = Pokemon.create(name: "Eevee", level: rand(1..100), sprite: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/133.png")

eevee.pokemon_skills.create(name: "Attract", description: "lows enemies defense", power_points: rand(5..30))




puts "✅ Done seeding!"
