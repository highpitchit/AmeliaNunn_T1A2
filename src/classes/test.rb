require 'test/unit'
require_relative './quiz'

class QuizTest < Test::Unit::TestCase
    def setup
        @customer = Customer.new('John', 'Smith')
    end
    def test_first_name
        assert_equal('John', @customer.first_name)
    end
    def test_last_name
        assert_equal('Smith', @customer.last_name)
    end
    def test_full_name
        assert_equal('John Smith', @customer.full_name)
    end
end