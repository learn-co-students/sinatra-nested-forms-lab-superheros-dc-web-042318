class SuperHero

    attr_accessor :name, :power, :biography
    
    SUPERHEROES = []

    def initialize(hash)
        @name = hash['name']
        @power = hash['power']
        @biography = hash['biography']
        SUPERHEROES << self
    end

    def self.all
        SUPERHEROES
    end

end