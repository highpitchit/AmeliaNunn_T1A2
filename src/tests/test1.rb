require 'test/unit'
require_relative '../classes/scores'

class QuizTest < Test::Unit::TestCase
    def test1_value
        instance = Scores.new
        assert_equal instance.set_score(@current_score), ["0"]
    end

    def test1_value2
        instance = Scores.new
        assert_equal instance.ordinal(11), "th"
    end
    
end




# def set_score(score)
#     @current_score = score.to_i()

#     @scores.push(@current_score.to_s())
# end
