#addition and subtraction
#can count up to 1000
require "colorize"

class Quiz
    def initialize(set)
        @set_of_quizzes = set
        @correct_answer = true
    end

    def ask_questions 
        # puts random :question from @set_of_quizzes
        questions_answered = 0

        while (correct_answer and questions_answered < 3) do

            random_number = @set_of_quizzes.to_a.sample()      #randomly select hash to use from beginner_quizzes and turns it to array
            z = [Hash[*random_number.flatten]]                  #changes random back to hash

            puts n1 = z.map {|x| x.values[0]}       #generates the question
                n2 = z.map {|x| x.values[1]}       #generates the corresponding answer
            answer = gets.chomp

            if (n2[0] == answer.to_i)
                puts ("Correct").colorize(:yellow)
                @set_of_quizzes.delete_if {|a| a[:question_text] == n1[0] }
            else 
                puts "Incorrect".colorize(:red)
                @correct_answer = false
            end

            questions_answered +=1

        end
    end

    def correct_answer
        return @correct_answer
    end
end


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

intermediate_quizzes = [{
    question_text: "If you boughtdasadasd 1 apple and 1 orange, how many pieces of fruit would you have?",
    answer_value: 2
},
{question_text: "If you need 3 adsdasdad, 2 broccoli and 4 zuchinni. What is the total number of items you added to your basket?",
    answer_value: 9
},
{question_text: "The shopping adsasdasdasd has asked for 6 bananas, but you have picked up a bunch with 8. How many bananas should you put back?",
    answer_value: 2
}]

bqs = Quiz.new(beginner_quizzes)
bqs.ask_questions

puts (bqs.correct_answer == true) ? "Congratulations you finished the level" : exit


iqs = Quiz.new(intermediate_quizzes)
iqs.ask_questions

# iqs = Quiz.new(intermediate_quizzes)



   