require_relative './scores'

class ShoppingTrolley
    def initialize
        @font1 = TTY::Font.new(:straight)
        @font2 = TTY::Font.new(:starwars)
        @pastel = Pastel.new
        @prompt = TTY::Prompt.new
        @name = ""
        @scores = Scores.new
    end

    def welcome
       
        puts @pastel.yellow(@font1.write("WELCOME TO THE SHOPPING TROLLEY GAME!"))   #Welcome to the shopping trolley game !
            puts "What is your name?".colorize(:blue)
            @name = gets.chomp
            puts @pastel.magenta(@font2.write("Welcome     #{@name} !"))
            
        puts "What is your age?".colorize(:blue)
        age = gets.chomp.to_i
        puts (age <= 6 or age >= 12) ?                                              
        "This game is best suited if you're between 7 and 11 but would you like to play anyway? (yes or no)".colorize(:yellow) 
        : "Would you be able to help me at the supermarket? (yes or no)".colorize(:blue)            #exception handled by if statement
        
        input = gets.chomp        
        if (input.upcase == "yes".upcase or input.upcase == "y".upcase)
            puts "Great! Let's get started!".colorize(:blue) 
        else
            puts "Thanks for playing, SEE YOU NEXT TIME!".colorize(:blue) 
            return
        end
        self.game
    end
    def game
        passed = false
    
        levels = ["Level 1", "Level 2", "Level 3", "Level 4"]
        input = @prompt.select("Which level would you like to start on?".colorize(:blue), levels)
        game_end = false
        level = levels.index(input)

        game_score = 0
        level_score = 0
        
        until game_end == true do 
            case level
            when 0
                beginner_quizzes = [{
                    question_text: "If you bought 1 apple and 1 orange, how many pieces of fruit would you have?", answer_value: 2},
                    {question_text: "If you need 3 potatos, 2 broccoli and 4 zuchinni. What is the total number of items you added to your basket?", answer_value: 9},
                    {question_text: "The shopping list has asked for 6 bananas, but you have picked up a bunch with 8. How many bananas should you put back?",
                    answer_value: 2
                    },
                    {question_text:  "Now you need 1 loaf of bread, 2 broccoli and 3 mushrooms. What is the total number of items added to your basket?", answer_value: 6},
                    {question_text:  "If you bought 2 pears and 1 lemon, how many pieces of fruit would you have?", answer_value: 3},
                    {question_text:   "The shopping list has asked for 13 bananas, but you have picked up a bunch with 8. How many more bananas do you need?", answer_value: 5 
                    }]
      
                bqs = Quiz.new(beginner_quizzes)
                bqs.ask_questions 
                
                puts @pastel.magenta(@font1.write("Congratulations - Next Level!!"))
                game_score += bqs.correct_answers * 200
                level += 1
            when 1
                intermediate_quizzes = [{
                    question_text: "If you have $20 and purchase cornflakes for $5, how much change would you receive", 
                    answer_value: 15},
                    {question_text: "Your shopping list requires two dozen eggs. How many eggs is this?",
                    answer_value: 24
                    },
                    {question_text: "You need 1/2 of a watermelon, but the supermarket has only 1/4 cut watermelon. How many 1/4 cut watermelon's should you purchase to make up 1/2?",
                    answer_value: 2
                    },
                    {question_text:  "If you have $10 and purchase two bottles of milk for $4 each, how much change would you receive?", answer_value: 2},
                    {question_text:  "There are 20 people coming for lunch and you need breadrolls. The breadrolls come in a pack of six. If you are to give everyone a bread roll, how many packets should you buy?", answer_value: 3},
                    {question_text:  "You need to purchase two bunches of flowers at $15 each. If you have $50 how many dollars do you have left?", answer_value: 20 
                    }]
                
                iqs = Quiz.new(intermediate_quizzes)
                iqs.ask_questions
                
                puts @pastel.magenta(@font1.write("Congratulations - Next Level!!"))
                game_score += iqs.correct_answers * 400
                level += 1
            when 2
                advanced_quizzes = [{
                    question_text: "You're picking up items for two recipes, one recipe requires 1 1/2 oranges and the other recipe requires 3 1/2 oranges. What is the total number of oranges you need?", 
                    answer_value: 5},
                    {question_text: "You're picking up items for three recipes, one recipe requires  1 1/4 pumpkin, the other recipe requires 1/4 pumpkin and the other recipe requires 2 1/2 pumpkins. What is the total number of pumpkins you need??",
                    answer_value: 4 
                    },
                    {question_text: "If 2kgs of bananas cost $8.98. What would this round to, to the nearest dollar?",
                    answer_value: 9
                    },
                    {question_text:  "If 5kgs of rice cost $24.67. What would this round to, to the nearest dollar?", answer_value: 25},
                    {question_text:  "You're picking up items for two recipes, one recipe requires 5 1/2 cups of flour and the other recipe requires 6 1/2 cups of flour. How many cups of flour do you need?", answer_value: 12},
                    {question_text:  "If 3 apples cost $2.17. What would this round to, to the nearest dollar?", answer_value: 2 
                    }]
                aqs = Quiz.new(advanced_quizzes)
                aqs.ask_questions   
    
                puts @pastel.magenta(@font1.write("Congratulations - Next Level!!"))
                game_score += aqs.correct_answers * 600
                level +=1
            when 3
                expert_quizzes = [{
                    question_text: "The apple costs $1.34 and the orange costs $0.66. How much money would you need ?", 
                    answer_value: 2},
                    {question_text: "The beans costs $2.65 and the pineapple costs $3.35. How much money would you need ?",
                    answer_value: 6
                    },
                    {question_text: "There is a sale on toilet paper. If toilet paper is normally $20 but it is 50% off, how much would it cost?",
                    answer_value: 10
                    },
                    {question_text:  "The juice costs $9.14 and the butter costs $3.86. How much money would you need ?", answer_value: 13},
                    {question_text:  "There is a sale on ice cream. If the ice cream is normally $12 but it is 25% off, how much would it cost?", answer_value: 9},
                    {question_text:  "Your total shop comes to $90 but since you are a member of the supermarket you receive 10% off. How much do you save?", answer_value: 9 
                    }]
                
                eqs = Quiz.new(expert_quizzes)
                eqs.ask_questions
                
                game_score += eqs.correct_answers * 800
                puts @pastel.magenta(@font1.write("Congratulations - You Finished the Gamel!!"))
                game_end = true 
            end
        end
        
        @scores.set_score(game_score)
        @scores.message
        puts "Your score for this game was " + game_score.to_s

        puts "Would you like to begin the quiz again? (yes or no)"
        input = gets.chomp
        if (input.upcase == "yes".upcase or input.upcase == "y".upcase)
            self.game
        else
            puts @font1.write("Thanks for playing - See you next time!")
            exit
        end
    end
end   

