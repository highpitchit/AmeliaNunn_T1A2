

require "csv"

class Scores
    def initialize()
        @current_score = 0
        @scores = []
        if (File.exist?("./scores.csv") == true)
            CSV.foreach("./scores.csv") do |row|
                @scores.push(row)
            end
        end

    end

    def write_scores()
        CSV.open("./scores.csv", "a") do |csv|
            csv << @scores
        end
    end

    def set_score(score)
        @current_score = score.to_i()

        @scores.push(@current_score.to_s())
    end

    def message()
        @scores.sort()
        puts @scores
        for i in 1..@scores do
                    
        end

        write_scores()
        puts @scores
    end

  end