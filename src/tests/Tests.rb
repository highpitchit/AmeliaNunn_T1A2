require 'test/unit'
require_relative '../classes/scores'

class QuizTest < Test::Unit::TestCase
    def current_score_test
        instance = Scores.new
        assert_equal instance.set_score(@current_score), ["0"]
    end

    def number_suffix_test
        instance = Scores.new
        assert_equal instance.ordinal(11), "th"
    end
    
end