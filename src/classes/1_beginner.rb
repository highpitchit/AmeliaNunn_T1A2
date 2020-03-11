#addition and subtraction
#can count up to 1000

class BeginnerLevel 
    attr_accessor :b_q
    
    def initialize
      
    end
    
    def beginner_q  
      @b_q = {
        :b_q1 => "If you bought 1 apple and 1 orange, how many pieces of fruit would you have?", 
        :b_q2 => "Now you need 3 potatos, 2 broccoli and 4 zuchinni. What is the total number of items added to your basket?",
        :b_q3 => "The shopping list has asked for 6 bananas, but you have picked up a bunch with 8. How many bananas should you put back?",
        :b_q4 => "If you bought 2 pears and 1 lemon, how many pieces of fruit would you have?", 
        :b_q5 => "Now you need 1 loaf of bread, 2 broccoli and 3 mushrooms. What is the total number of items added to your basket?",
        :b_q6 => "The shopping list has asked for 13 bananas, but you have picked up a bunch with 8. How many more bananas do you need?",    
        :b_q7 => "If you bought 1 potato and 3 limes, how many pieces of fruit would you have?", 
        :b_q8 => "Now you need 3 corn cobs, 10 carrots and 1 avocado. What is the total number of items added to your basket?",
        :b_q9 => "The shopping list has asked for 1 banana, but you have picked up a bunch with 9. How many bananas should you put back?", 
        :b_q10 => "If you bought 2 peach and 5 oranges, how many pieces of fruit would you have?", 
        :b_q11 => "Now you need 6 bread rolls, 4 apples and 7 lemons. What is the total number of items added to your basket?",
        :b_q12 => "The shopping list has asked for 12 grapes, but you have picked up a bunch with 36. How many bananas should you put back?"
    }
    end
    def beginner_a  
      @b_a = {
        :b_a1 => 2, 
        :b_a2 => 9,
        :b_a3 => 2,
        :b_a4 => 3,
        :b_a5 => 6,
        :b_a6 => 5,
        :b_a7 => 4,
        :b_a8 => 14,
        :b_a9 => 8,
        :b_a10 => 7,
        :b_a11 => 17,
        :b_a12 => 24,
}
    end
end

bqs = BeginnerLevel.new

puts q1 = bqs.beginner_q[:b_q1]
a1 = gets.chomp
puts (bqs.beginner_a[:b_a1]) == a1 ?  "Correct!" : "Incorrect answer"
