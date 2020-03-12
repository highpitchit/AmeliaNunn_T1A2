
class ShoppingTrolley
    def initialize
        @font1 = TTY::Font.new(:straight)
        @font2 = TTY::Font.new(:starwars)
        @pastel = Pastel.new
        @prompt = TTY::Prompt.new
    end
    def welcome
        puts @pastel.yellow(@font1.write("WELCOME TO THE SHOPPING TROLLEY GAME!"))   #Welcome to the shopping trolley game !
        puts "What is your name?".colorize(:blue)
        
        name = gets.chomp
        puts @pastel.magenta(@font2.write("Welcome     #{name} !"))
        puts "What is your age?".colorize(:blue)
        age = gets.chomp.to_i
        puts (age <= 6 or age >= 12) ? 
        "This game is best suited if you're between 7 and 11 but would you like to play anyway? (yes or no)" 
        : "Would you be able to help me at the supermarket? (yes or no)"

      
        input = gets.chomp        
        if input.upcase == "yes".upcase
            puts "Great! Let's get started!" 
        else
            puts "Thanks for playing, see you next time!" 
            return
        end
        passed = false

        levels = ["Level 1", "Level 2", "Level 3", "Level 4"]
        input = @prompt.select("Which level would you like to start on?", levels)

        if (input = "Level 1") 
            beginner_quizzes = [{
                question_text: "If you bought 1 apple and 1 orange, how many pieces of fruit would you have?",
                answer_value: 2
                },
                {question_text: "If you need 3 potatos, 2 broccoli and 4 zuchinni. What is the total number of items you added to your basket?",
                answer_value: 9
                },
                {question_text: "The shopping list has asked for 6 bananas, but you have picked up a bunch with 8. How many bananas should you put back?",
                answer_value: 2
                },
                {question_text:  "Now you need 1 loaf of bread, 2 broccoli and 3 mushrooms. What is the total number of items added to your basket?", answer_value: 6},
                {question_text:  "If you bought 2 pears and 1 lemon, how many pieces of fruit would you have?", answer_value: 3},
                {question_text:   "The shopping list has asked for 13 bananas, but you have picked up a bunch with 8. How many more bananas do you need?", answer_value: 5 
                }]
  
            bqs = Quiz.new(beginner_quizzes)
            bqs.ask_questions 

            puts (bqs.correct_answer == true) ? "Congratulations you finished the level" : passed = true
        end

        if (input = "Level 2" or passed = true)
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
                {question_text:  "There are 20 people coming for lunch and you need breadrolls. The breadrolls come in a pack of six. 
                                 If you are to give everyone a bread roll, how many packets should you buy?", answer_value: 3},
                {question_text:  "You need to purchase two bunches of flowers at $15 each. If you have $50 how many dollars do you have left?", answer_value: 20 
                }]
            
            iqs = Quiz.new(intermediate_quizzes)
            iqs.ask_questions
        end

    end
end

