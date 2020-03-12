
require "csv"

class Scores
    def initialize()
        @current_score = 0
        @scores = []
        if (File.exist?("./scores.csv") == true)
            CSV.foreach("./scores.csv") do |row|
                @scores.push(row[0].to_i)
            end
        end
    end

    def write_scores()
        CSV.open("./scores.csv", "wb") do |csv|
            @scores.each {|scr| csv << [scr]}
        end
    end

    def set_score(score)
        @current_score = score.to_i()

        @scores.push(@current_score.to_s())
    end

    def message()
        @scores.sort_by(&:to_i).reverse
        count = 1
        for i in @scores do
            if @current_score.to_i() < i.to_i()
                count+=1
            end
        end

        puts "You have the " + count.to_s + ordinal(count) + " highest score!"

        write_scores()
    end

    def ordinal(number)
        abs_number = number.to_i.abs
      
        if (11..13).include?(abs_number % 100)
          "th"
        else
          case abs_number % 10
            when 1; "st"
            when 2; "nd"
            when 3; "rd"
            else    "th"
          end
        end
      end

  end