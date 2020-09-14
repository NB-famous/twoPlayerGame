class Players
    attr_accessor :lives, :name

    def initialize(name, lives = 1)
        @name = name
        @lives = lives
    end

end

# Get the info from the terminal
playerName = gets.chomp

playerOne = Players.new(playerName)

if playerOne.lives <= 0
    puts  "#{playerOne.name} you have no lives left!"
elsif playerOne.lives == 1
    puts "your name is #{playerOne.name} and you still have #{playerOne.lives} life left"
else
    puts "your name is #{playerOne.name} and you still have #{playerOne.lives} lives"
end