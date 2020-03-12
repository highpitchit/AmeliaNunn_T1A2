

require "csv"

class Scores
    def initialize()
        @current_score = 0
        if (File.file?("./scores.csv"))
            @scores = CSV.parse("./scores.csv")
        else
            @score = CSV.parse("1,ben,0\n")
        end
    end

    def write_scores()
        CSV.open("./score.csv", "wb") do |csv|
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