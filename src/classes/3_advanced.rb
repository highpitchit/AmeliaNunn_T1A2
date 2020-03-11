#Addition and subtraction of fractions
#estimation and rounding

class AdvancedLevel 
    attr_accessor :a_q
    
    def initialize
      
    end
    
    def advanced_q  
      @a_q = {
        :a_q1 => "", 
        :a_q2 => "",
        :a_q3 => "",
        :a_q4 => "", 
        :a_q5 => "",
        :a_q6 => "",    
        :a_q7 => "", 
        :a_q8 => "",
        :a_q9 => "", 
        :a_q10 => "", 
        :a_q11 => "",
        :a_q12 => ""
    }
    end
    def advanced_a  
      @a_a = {
        :a_a1 => , 
        :a_a2 => ,
        :a_a3 => ,
        :a_a4 => ,
        :a_a5 => ,
        :a_a6 => ,
        :a_a7 => ,
        :a_a8 => ,
        :a_a9 => ,
        :a_a10 => ,
        :a_a11 => ,
        :a_a12 => ,
}
    end
end

aqs = AdvancedLevel.new

p aqs.advanced_q[:a_q1]