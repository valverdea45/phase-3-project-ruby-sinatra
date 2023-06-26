class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/pokemons" do
    pokemons = Pokemon.all
    pokemons.to_json(include: :pokemon_skills)
  end

  post "/pokemons" do
    pokemon = Pokemon.create(
      name: params[:name],
      level: params[:level],
      sprite: params[:sprite]
    )

    pokemon.to_json(include: :pokemon_skills)
  end


  post "/skills" do 
    pokemon = Pokemon.find_by(id: params[:pokemon_id])

    skill = pokemon.pokemon_skills.create(
      name: params[:name],
      description: params[:description],
      power_points: params[:power_points]
    )

    skill.to_json
    
  end

  patch "/skills/:id" do 
    skill = PokemonSkill.find(params[:id])

    skill.update(
      name: params[:name],
      description: params[:description],
      power_points: params[:power_points]
    )

    skill.to_json
  end

  

  delete "/skills/:id" do
    skill = PokemonSkill.find(params[:id])

    skill.destroy

  end

  patch "/pokemons/:id" do
    pokemon = Pokemon.find(params[:id])

    pokemon.update(
      name: params[:name],
      level: params[:level],
      sprite: params[:sprite]
    )

    pokemon.to_json(include: :pokemon_skills)

  end

  delete "/pokemons/:id" do
    pokemon = Pokemon.find(params[:id])

    pokemon.destroy


  end

end
