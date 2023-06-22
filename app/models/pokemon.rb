class Pokemon < ActiveRecord::Base
    has_many :pokemon_skills, dependent: :destroy
end