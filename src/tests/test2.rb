require 'test/unit'
require_relative '../classes/Shopping_Trolley.rb'

class QuizTest < Test::Unit::TestCase
    def test2_value
        instance = ShoppingTrolley.new
        assert_equal instance.game(game_end), false
    end
    # def test1_value2
    #     instance = Scores.new
    #     assert_equal instance.ordinal(11), "th"
    # end
end
#levels = ["Level 1", "Level 2", "Level 3", "Level 4"]