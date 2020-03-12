require_relative './Shopping_Trolley'

class Scores < ShoppingTrolley
    def initialize(user)
        @current_score = 0
        if (File.file?("./scores.csv"))
            @scores = csv.parse("./scores.csv")
        else
            @score = csv.parse("1," + @name + ",0\n")
        end
    end

    def write_scores()
        csv.open("./score.csv", "wb") do |csv|
            csv << @scores
        end
    end

    def set_score(score)
        @current_score = score

        @scores.push(@name + "," + @current_score)
    end

    def message()
        puts @scores
    end

    
  end