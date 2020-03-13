require 'test/unit'
require_relative '../classes/scores.rb'


class QuizTest < Test::Unit::TestCase
    #def test2_value
    #    instance = ShoppingTrolley.new
    #    assert_equal instance.game(game_end), false
    #end

    def score_set_test
         scores = Scores.new
         scores.score_set_test(10)
         assert_equal scores.@current_score, 10
    end
end
#levels = ["Level 1", "Level 2", "Level 3", "Level 4"]