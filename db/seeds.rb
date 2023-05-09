puts "🌱 Seeding spices..."
require "pry"

# Seed your database here
pokemon_names = ["Bulbasaur", "Squirtle", "Pikachu", "Mew", "Gengar", "Charizard"]

pokemon_skills = ["Vine whip", "Watergun", "Tackle", "Mimic", "Curse", "Flamethrower"]


pokemon_names.each do |pokemon|
    Pokemon.create(name: pokemon, level: rand(1..100))
end

# bind one skill to one pokemon
# bind next skill to one pokemon

# Pokemon.all.each do |pokemon|
#     PokemonSkill.all.each do |skill|
#         if skill.pokemon_id == pokemon_id
#             PokemonSkill.create(name: "Vine Whip", description: "", power_points: rand(1..25), pokemon_id: pokemon.id)
#         end
#     end
# end

PokemonSkill.create(name: "Vine Whip", description: "", power_points: rand(1..25), pokemon_id: 1)   
PokemonSkill.create(name: "Water Gun", description: "", power_points: rand(1..25), pokemon_id: 2)
PokemonSkill.create(name: "Tackle", description: "", power_points: rand(1..25), pokemon_id: 3)
PokemonSkill.create(name: "Mimic", description: "", power_points: rand(1..25), pokemon_id: 4)
PokemonSkill.create(name: "Curse", description: "", power_points: rand(1..25), pokemon_id: 5)
PokemonSkill.create(name: "Flame Thrower", description: "", power_points: rand(1..25), pokemon_id: 6)




binding.pry




puts "✅ Done seeding!"
