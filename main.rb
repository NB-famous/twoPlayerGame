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
# Player 1
print "What's your name player one: "
player1Name = gets.chomp
# Player 2 
print "What's your name player two: "
player2Name = gets.chomp


playerOne = Players.new(player1Name)
playerTwo = Players.new(player2Name)

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

# initialize turn to zero to say player one
turn = 0

while playerOne.stillPlaying && playerTwo.stillPlaying do
    player = (turn == 0) ? playerOne : playerTwo
    puts " #{player.name} it's now your turn "
    question = Questions.new
    puts "#{player.name}: What is the sum of #{question.val1} and #{question.val2}"
    print "What's your answer: "
    answer = gets.chomp
    if answer.to_i == question.answer
        puts "Correct!"
        puts "Score -> #{playerOne.name}: #{playerOne.lives}/3 || #{playerTwo.name}: #{playerTwo.lives}/3"
    else
        player.lives -= 1
        puts "Incorrect! You lost a life"
        puts "Score -> #{playerOne.name}: #{playerOne.lives}/3 || #{playerTwo.name}: #{playerTwo.lives}/3"
    end

    # when there is no remainder its player one's turn && if its not zero then player two
    turn = (turn + 1) % 2
end

if(playerTwo.lives == 0)
    puts "#{playerOne.name} Wins!!!"
    puts "//// Final Score ////"
    puts "WINNER -> #{playerOne.name}: #{playerOne.lives}/3"
    puts "LOSSER -> #{playerTwo.name}: #{playerTwo.lives}/3"
    puts "////////////// GAME-OVER //////////////"
else 
    puts "#{playerTwo.name} Wins!!!"
    puts "//// Final Score ////"
    puts "WINNER -> #{playerTwo.name}: #{playerTwo.lives}/3"
    puts "LOSSER ->#{playerOne.name}: #{playerOne.lives}/3"
    puts "////////////// GAME-OVER //////////////"
end
