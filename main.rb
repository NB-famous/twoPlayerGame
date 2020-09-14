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

class Questions
    attr_accessor :answer, :val1, :val2
    
    def initialize
        #Generate random value between 1 to 10    
        @val1 = rand(1...10)
        @val2 = rand(1...10)
        @answer = @val1 + @val2
    end
end


# Get the info from the terminal
playerName = gets.chomp

playerOne = Players.new(playerName)

#test 1 check if info can be retrieve from class players
=begin 
if playerOne.lives <= 0
    puts  "#{playerOne.name} you have no lives left!"
elsif playerOne.lives == 1
    puts "your name is #{playerOne.name} and you still have #{playerOne.lives} life left"
else
    puts "your name is #{playerOne.name} and you still have #{playerOne.lives} lives"
end 
=end

# test 2 check if player is still playing or no more lives
=begin 
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
=end

# test 3 See if we can create a condition where when output a question and input a answer(.gets.chomp)
while playerOne.stillPlaying do
    question = Questions.new
    puts "#{playerOne.name}: What is the sum of #{question.val1} and #{question.val2}"
    print "What's your answer: "
    answer = gets.chomp
    if answer.to_i == question.answer && playerOne.lives == 3
        puts "Success!"
        puts "You still have #{playerOne.lives} lives left"
    elsif answer.to_i == question.answer && playerOne.lives > 0  
        playerOne.lives -= 1
        puts "lost a life"
        puts "You still have #{playerOne.lives} lives left"
    else
        playerOne.lives -= 1
        puts "Game Over!!!"
    end

end
