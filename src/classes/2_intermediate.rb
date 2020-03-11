class IntermediateLevel 
    attr_accessor :i_q
    
    def initialize
      
    end
    
    def intermediate_q  
      @i_q = {
        :i_q1 => "If you bought 1 apple and 1 orange, how many pieces of fruit would you have?", 
        :i_q2 => "Now you need 3 potatos, 2 broccoli and 4 zuchinni. What is the total number of items added to your basket?",
        :i_q3 => "The shopping list has asked for 6 bananas, but you have picked up a bunch with 8. How many bananas should you put back?",
        :i_q4 => "If you bought 2 pears and 1 lemon, how many pieces of fruit would you have?", 
        :i_q5 => "Now you need 1 loaf of bread, 2 broccoli and 3 mushrooms. What is the total number of items added to your basket?",
        :i_q6 => "The shopping list has asked for 13 bananas, but you have picked up a bunch with 8. How many more bananas do you need?",    
        :i_q7 => "If you bought 1 potato and 3 limes, how many pieces of fruit would you have?", 
        :i_q8 => "Now you need 3 corn cobs, 10 carrots and 1 avocado. What is the total number of items added to your basket?",
        :i_q9 => "The shopping list has asked for 1 banana, but you have picked up a bunch with 9. How many bananas should you put back?", 
        :i_q10 => "If you bought 2 peach and 5 oranges, how many pieces of fruit would you have?", 
        :i_q11 => "Now you need 6 bread rolls, 4 apples and 7 lemons. What is the total number of items added to your basket?",
        :i_q12 => "The shopping list has asked for 12 grapes, but you have picked up a bunch with 36. How many bananas should you put back?"
    }
    end
    def intermediate_a  
      @i_a = {
        :i_a1 => 2, 
        :i_a2 => 9,
        :i_a3 => 2,
        :i_a4 => 3,
        :i_a5 => 6,
        :i_a6 => 5,
        :i_a7 => 4,
        :i_a8 => 14,
        :i_a9 => 8,
        :i_a10 => 7,
        :i_a11 => 17,
        :i_a12 => 24,
}
    end
end

iqs = IntermediateLevel.new

p iqs.intermediate_q[:i_q1]