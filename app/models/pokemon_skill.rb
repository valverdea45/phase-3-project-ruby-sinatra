class PokemonSkill <ActiveRecord::Base
    belongs_to :pokemon

    def self.by_name
        self.all.order(name: :desc)
    end
end