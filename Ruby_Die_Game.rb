# Define Die with methods
class Die
    def initialize(sides)
        @sides = sides
        @roll_array = []
        @total = 0
    end

    def generate_die_roll
        rand(@sides) + 1
    end

    def all_rolls
        @roll_array
    end

    def roll(number = 1)
        number.times do
            roll_value = rand(@sides) + 1
            @roll_array << roll_value
        end
        @roll_array.each do |roll |
            new_total = @total + roll
            @total = new_total
        end
        @total
    end
    
    def total
        @total
    end
end

# Instantiate Die with corresponding number of sides
SIX_SIDED_DIE = Die.new(6)
EIGHT_SIDED_DIE = Die.new(8)
TEN_SIDED_DIE = Die.new(10)
TWENTY_SIDED_DIE = Die.new(20)

# Start CLI game with 6-sided die
puts "Let's play a game"
puts "Tell me how many die you want to roll (this game works best with more than 2!)"
num_die = gets.to_i
SIX_SIDED_DIE.roll(num_die)

# Store the result of rolls as a variable
results = SIX_SIDED_DIE.all_rolls

# user rolled two die
if num_die == 2
    if results.first == results.last
        puts "BOTH YOUR DIE DISPLAY THE SAME NUMBER: #{results.first}! WOO!!!!"
    else
        puts "Oh no, you didn't get a match - your die were #{results.first} and #{results.last}"
end

# user only rolls one dice
elsif num_die == 1
    puts "You really want to just roll ONE dice??? That's boring, here's the number: #{results.first}"

# user didn't roll
elsif num_die == 0
    puts "Okay, you don't want to play then -- Bye!"

# user rolls more than 2 die
else
    print "You're rolling lots of die! You rolled:  "
    results.each do |roll |
    print "#{roll}, "
end

# display die total
puts "\n\n" + "This is the total of all of them: #{SIX_SIDED_DIE.total}"
end