#add and subtract decimals
#money and financial mathematics 
#10% 25% 50%
#using brackets to order of operation

class ExpertLevel 
    attr_accessor :e_q
    
    def initialize
      
    end
    
    def expert_q  
      @e_q = {
        :e_q1 => "", 
        :e_q2 => "",
        :e_q3 => "",
        :e_q4 => "", 
        :e_q5 => "",
        :e_q6 => "",    
        :e_q7 => "", 
        :e_q8 => "",
        :e_q9 => "", 
        :e_q10 => "", 
        :e_q11 => "",
        :e_q12 => ""
    }
    end
    def expert_a  
      @e_a = {
        :e_a1 => , 
        :e_a2 => ,
        :e_a3 => ,
        :e_a4 => ,
        :e_a5 => ,
        :e_a6 => ,
        :e_a7 => ,
        :e_a8 => ,
        :e_a9 => ,
        :e_a10 => ,
        :e_a11 => ,
        :e_a12 => ,
}
    end
end

eqs = ExpertLevel.new

p eqs.expert_q[:e_q1]