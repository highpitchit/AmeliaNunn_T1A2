

require "csv"

class Scores
    def initialize()
        @current_score = 0
        if (File.file?("./scores.csv"))
            @scores = CSV.parse("./scores.csv")
        else
            @scores = CSV.parse("0")
        end
    end

    def write_scores()
        CSV.open("./score.csv", "wb") do |csv|
            csv << @scores
        end
    end

    def set_score(score)
        @current_score = score.to_i()

        @scores.push(@current_score.to_s())
    end

    def message()
        write_scores()
        puts @scores
    end

  end