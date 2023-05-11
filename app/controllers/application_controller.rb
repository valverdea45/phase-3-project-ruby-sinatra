class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  # post '/messages' do 
  #   message = Message.create(
  #     body: params[:body],
  #     username: params[:username]
  #   )
  #   message.to_json
  # end

  get "/pokemons" do
    pokemons = Pokemon.all
    pokemons.to_json
    # { message: "Good luck with your project!" }.to_json
  end

  post "/pokemons" do
    pokemon = Pokemon.create(
      name: params[:name],
      level: params[:level],
      sprite: params[:sprite]
    )
    pokemon.to_json
  end

end
