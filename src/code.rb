require "colorize"
require "tty-prompt"
require "tty-font"
require "simple-random"

# require_relative classes/1_beginner.rb


class ShoppingTrolley 
    def initialize 
        @font1 = TTY::Font.new(:straight)
        @font2 = TTY::Font.new(:starwars)
        @pastel = Pastel.new
        @prompt = TTY::Prompt.new
    end
    def welcome
        puts @pastel.yellow(@font1.write("WELCOME TO THE SHOPPING TROLLEY GAME!"))   #Welcome to the shopping trolley game !
        puts "What is your name?".colorize(:blue)
        
        name = gets.chomp
        puts @pastel.magenta(@font2.write("Welcome     #{name} !"))
        puts "What is your age?".colorize(:blue)
        age = gets.chomp.to_i
        puts (age <= 6 or age >= 12) ? 
        "This game is best suited if you're between 7 and 11 but would you like to play anyway?" 
        : "Would you be able to help me at the supermarket?"

      
        input = gets.chomp        
        if input == "yes"
            puts "Great! Let's get started!" 
        else
            puts "Thanks for playing, see you next time!" 
            return
        end
        
        levels = ["Level 1", "Level 2", "Level 3", "Level 4"]
        @prompt.select("Which level would you like to start on?", levels).colorize("blue")
        

    end
end

app = ShoppingTrolley.new
puts app.welcome







    
