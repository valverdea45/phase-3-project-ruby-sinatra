class CreatePokemonSkill < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemon_skills do |t|
      t.string :name
      t.string :description
      t.integer :power_points
      t.integer :pokemon_id
      t.timestamps
    end
  end
end
