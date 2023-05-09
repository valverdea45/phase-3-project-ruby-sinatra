class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/pokemons" do
    pokemons = Pokemon.all
    pokemons.to_json
    # { message: "Good luck with your project!" }.to_json
  end

end
