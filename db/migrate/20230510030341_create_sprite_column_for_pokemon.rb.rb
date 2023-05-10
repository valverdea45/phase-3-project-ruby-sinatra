class CreateSpriteColumnForPokemon < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :sprite, :string
  end
end
