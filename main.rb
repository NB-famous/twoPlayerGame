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

# Get the info from the terminal
playerName = gets.chomp

playerOne = Players.new(playerName)

#test 1
=begin 
if playerOne.lives <= 0
    puts  "#{playerOne.name} you have no lives left!"
elsif playerOne.lives == 1
    puts "your name is #{playerOne.name} and you still have #{playerOne.lives} life left"
else
    puts "your name is #{playerOne.name} and you still have #{playerOne.lives} lives"
end 
=end

# test 2
while playerOne.stillPlaying do
    playerOne.lives -= 1

    if playerOne.lives <= 0
        puts  "#{playerOne.name} youre dead! "
    elsif playerOne.lives == 1
        puts "your name is #{playerOne.name} and you still have #{playerOne.lives} life left"
    else
        puts "your name is #{playerOne.name} and you still have #{playerOne.lives} lives"
    end 
end
