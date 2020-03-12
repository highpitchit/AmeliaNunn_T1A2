#addition and subtraction
#can count up to 1000
require "colorize"

class Quiz 
    def initialize(set)
        @set_of_quizzes = set
        @correct_answer = true
    end

    def ask_questions()
        # puts random :question from @set_of_quizzes
        questions_answered = 0
        correct_answers = 0

        while (questions_answered < 3) do

            random_number = @set_of_quizzes.to_a.sample()      #randomly select hash to use from beginner_quizzes and turns it to array
            z = [Hash[*random_number.flatten]]                  #changes random back to hash

            puts n1 = z.map {|x| x.values[0]}       #generates the question
                n2 = z.map {|x| x.values[1]}       #generates the corresponding answer
            answer = gets.chomp

            if (n2[0] == answer.to_i)
                puts ("Correct").colorize(:yellow)
                @set_of_quizzes.delete_if {|a| a[:question_text] == n1[0] }
                correct_answers +=1
            else 
                puts "Incorrect".colorize(:red)
            end

            questions_answered += 1

        end

        return correct_answers
    end

    def correct_answer
        return @correct_answer
    end
end


   