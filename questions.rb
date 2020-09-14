# question class holds values for the questions and answer

class Questions
    attr_accessor :answer, :val1, :val2
    def initialize
        #Generate random value between 1 to 10    
        @val1 = rand(1...10)
        @val2 = rand(1...10)
        @answer = @val1 + @val2
    end
end