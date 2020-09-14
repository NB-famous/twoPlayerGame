# Player class holds the name and lives of each player
class Players
    attr_accessor :lives, :name
    def initialize(name, lives = 3)
        @name = name
        @lives = lives
    end
    def stillPlaying
        @lives > 0
    end

end