# Title: Calc-U-L8R
# Author : Graeme Kean
# Description: A calculator / converter program


# IMPORT LIBRARIES

require 'date'


# MENU FUNCTIONS ----------------------------------------------------------

# MAIN MENU
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "*** Calc-U-L8R ***"
  puts "Please choose whether to keep it simple, or push the boundaries"
  print "(b)asic, (a)dvanced, (m)ore or (q)uit: "
  gets.chomp.downcase
end

def convert_menu
  puts "What would you like to convert?"
  puts "Select 1 for miles to kilometres"
  puts "Select 2 for kilometers to miles"
  puts "Select 3 for inches into centimetres"
  puts "Select 4 for centimetres into inches"
  puts "Select 5 for feet into metres"
  puts "Select 6 for metres into feet"
  
end

def secondary_menu
  puts "please select the function you wish to perform"
  puts "(v)olume, a(g)e, Chri(s)tmas counter or (c)onverter"
end

# INPUT FUNCTIONS    ----------------------------------------------------------------


def get_firstnum
  gets.chomp.to_f
end

def get_secondnum
  gets.chomp.to_f
end

def get_thirdnum
  gets.chomp.to_f
end


# MATHS CALCULATION FUNCTIONS ---------------------------------------------------


def add(first_num, second_num)
  first_num + second_num
end

def subtract(first_num, second_num)
  first_num - second_num
end

def multiply(first_num, second_num)
  first_num * second_num
end

def divide(first_num, second_num)
  first_num / second_num
end

def square(first_num)
  first_num ** 2
end

def root(first_num)
  Math.sqrt(first_num) 
end


# VOLUME CALCULATION FUNCTIONS   ---------------------------------------------------

def cube_volume(length, width, height)
  length * width * height
end


def sphere_volume(radius)
  (4/3)*Math::PI*(radius**3)
end


# DISTANCE FUNCTIONS -------------------------------------------------------------

def miles_to_km (miles)
  km = miles / 0.62137 
end

def km_to_miles (kilometres)
  miles = kilometres * 0.62137
end

def inches_to_cm (inches)
  cm = inches * 2.54
end

def cm_to_inches (cm)
  inches = cm / 2.54
end

def feet_to_metres (feet)
  metres = feet * 0.3048
end

def metres_to_feet (metres)
  feet = metres / 0.3048
end

 
# WEIGHT FUNCTIONS    -----------------------------------------------------------------

def pounds_to_kg (pounds)
  kg = pounds * 0.45359265
end

def kg_to_pounds (kg)
  pounds = kg / 0.45359265
end

def grams_to_ounces (grams)
  ounces = grams / 28.349
end

def ounces_to_grams (ounces)
  grams = ounces * 28.349
end

# MATHS FUNCTIONS  ----------------------------------------------------------------

def addition
  puts "Choose your first number"
  x = get_firstnum
  puts "Choose your second number"
  y = get_secondnum
  answer = add(x,y)
  puts "#{x} + #{y} = #{answer}"
end

def subtraction
  puts "Choose your first number"
  x = get_firstnum
  puts "Choose your second number"
  y = get_secondnum
  answer = subtract(x, y)
  puts "#{x} - #{y} = #{answer}"
end

def multiplication
  puts "Choose your first number"
  x = get_firstnum
  puts "Choose your second number"
  y = get_secondnum
  answer = multiply(x, y)
  puts "#{x} x #{y} = #{answer}"
end

def division
  puts "Choose your first number"
  x = get_firstnum
  puts "Choose your second number"
  y = get_secondnum
  answer = divide(x, y)
  puts "#{x} + #{y} = #{answer}"
end

def squared
  puts "Choose the number to square:"
  x = get_firstnum
  answer = square(x)
  puts "#{x} squared = #{answer}"
end

def square_root
  puts "Choose the number to find the root of:"
  x = get_firstnum
  answer = root(x)
  puts "The square root of #{x} = #{answer}"
end

# MAIN FUNCTIONS   -----------------------------------------------------------------

def basic_calc
  # ask the user which operation they want to perform
  puts "Which simple operation do you want to perform"
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
  case operation
    when "a"
     addition
    when "s"
      subtraction
    when "m"
      multiplication
    when "d"
      division
    else
      puts "Not a valid selection"
      basic_calc
  end
      sleep 5
end


def advanced_calc
  puts "Good choice - which advanced operation do you want to perform?"
  print "(s)quare or square-(r)oot: "
  operation = gets.chomp.downcase
  case operation
    when "s"
     squared
  when "r"
      square_root
  end
    sleep 5
end

def volume_calc
  puts "What would you like to find the volume of?"
  puts "Select (c)ube or (s)phere"
  volume_shape = gets.chomp
  case volume_shape
    when 'c'
      puts "Please select cube length in cm"
      x = get_firstnum
      puts "Please select cube width in cm"
      y = get_secondnum
      puts "Please select the height of the cube in cm"
      z = get_thirdnum
      answer = cube_volume(x, y, z)
      puts "The volume of your cube is #{answer}cm cubed"
  when 's'
      puts "Please input the radius of the sphere in cm"
      x = get_firstnum
      volume = sphere_volume(x)
      puts "The volume of a sphere with radius #{x}cm is #{volume}cm cubed"
  end
    sleep 5
end

# DATE BASED FUNCTIONS ---------------------------------------------------------


def get_year
  puts 'Please inseet the year of your birth: '
  @year_of_birth = gets.chomp.to_i
# if year_of_birth.length != 4
#   puts "not a valid year value"
#   get_year
# end
end

def get_month
  puts 'please insert the value (1-12) of the month on which you were born: '
  @month_of_birth = gets.chomp.to_i
# if month_of_birth < 1 || month_of_birth > 12
#   puts "not a valid value"
#   get_month
# end
end

def get_day
  puts 'please insert the value (0-31) of the day of the month on which you were born: '
  @day_of_birth = gets.chomp.to_i
end

def check_day
  # add code here to verify that the day value is valid for the month selected
end

def calculate_age
  date_today = Date.today
  birthday = Date.new(@year_of_birth, @month_of_birth, @day_of_birth)
  difference = date_today - birthday
  years_alive = difference.to_i / 364.25
  age = years_alive.to_i
  puts "You are #{age} years old"
  sleep 5
end

# HOW MANY DAYS TO CHRISTMAS FUNCTION   -------------------------------------

def christ_sleeps
  date_today = Date.today
  christmas = Date.new(2015, 12, 25)
  days_to_christmas = christmas - date_today
  days = days_to_christmas.to_i - 1
  puts "There are #{days} sleeps until Christmas"
  sleep 5
end

# CONVERTER FUNCTIONS  ----------------------------------------------------------

def converter
puts "what would you like to covert?"
puts "select - a (d)istance, (w)eight or (v)olume"
select = gets.chomp
case select
  when "d"
    convert_menu
    convert_type = gets.chomp
      case convert_type
        when '1'
          puts "please enter the number of miles you would like to convert to kilometres, or select (b) to go back"
            miles_input = gets.chomp
            if miles_input == "b" 
              converter
            else
              miles = miles_input.to_i
            end
            answer = miles_to_km(miles)
            puts "There are #{answer}km in #{miles} miles"
        when "2"
          puts "please enter the number of kilometres you would like to convert to miles, or select (b) to go back"
            km_input = gets.chomp
            if km_input == "b" 
              converter
            else
              kilometres = km_input.to_i
            end
            answer = km_to_miles(kilometres)
            puts "There are #{answer} miles in #{kilometres} kilometres"
        when "3"
          puts "please enter the number of inches you would like to convert to centimetres, or select (b) to go back"
            inches_input = gets.chomp
            if inches_input == "b" 
              converter
            else
              inches = inches_input.to_i
            end
            answer = inches_to_cm (inches)
            puts "There are #{answer} centimetres in #{inches} inches"
        when "4"
          puts "please enter the number of centimetres you would like to convert to inches, or select (b) to go back"
            cm_input = gets.chomp
            if cm_input == "b" 
              converter
            else
              centimetres = cm_input.to_i
            end
            answer = cm_to_inches (centimetres)
            puts "There are #{answer} inches in #{centimetres} centimetres."
        when "5"
          puts "please enter the number of feet you would like to convert to metres, or select (b) to go back"
            feet_input = gets.chomp
            if feet_input == "b" 
              converter
            else
              feet = feet_input.to_i
            end
            answer = feet_to_metres (feet)
            puts "There are #{answer} metres in #{feet} feet."
        when "6"
          puts "please enter the number of metres you would like to convert to feet, or select (b) to go back"
            metres_input = gets.chomp
            if metres_input == "b" 
              converter
            else
              metres = metres_input.to_i
            end
            answer = metres_to_feet (metres)
            puts "There are #{answer} feet in #{metres} metres."
        end
  when "w"
    puts "What would you like to convert?"
    puts "1 for pounds into kilograms"
    puts "2 for kilograms into pounds"
    puts "3 for grams into ounces"
    puts "4 for ounces into grams"
    weight_type = gets.chomp

    case weight_type
    when '1'
      puts "please enter the number of pounds you would like to convert to kilograms, or select (b) to go back"
        pounds_input = gets.chomp
        if pounds_input == "b" 
          converter
        else
          pounds = pounds_input.to_i
        end
        answer = pounds_to_kg (pounds)
        puts "There are #{answer} kilograms in #{pounds} pounds"
    when "2"
      puts "please enter the number of kilograms you would like to convert to pounds, or select (b) to go back"
        kg_input = gets.chomp
        if kg_input == "b" 
          converter
        else
          kg = kg_input.to_i
        end
        answer = kg_to_pounds (kg)
        puts "There are #{answer} pounds in #{kg} kilograms"
    when "3"
      puts "please enter the number of grams you would like to convert to ounces, or select (b) to go back"
        grams_input = gets.chomp
        if grams_input == "b" 
          converter
        else
          grams = grams_input.to_i
        end
        answer = grams_to_ounces (grams)
        puts "There are #{answer} ounces in #{grams} grams"
    when "4"
      puts "please enter the number of ounces you would like to convert to grams, or select (b) to go back"
        ounces_input = gets.chomp
        if ounces_input == "b" 
          converter
        else
          ounces = ounces_input.to_i
        end
        answer = ounces_to_grams (ounces)
        puts "There are #{answer} grams in #{ounces} ounces"
    end
  when "v"

    #ADD VOLUME CONVERSION OPTIONS HERE


  else
    puts "invalid selection"
    converter
  end


    sleep 5
end

# run the app...

response = menu

until response == 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'm'
    secondary_menu
    type = gets.chomp.downcase
    case type
    when 'v'
        volume_calc
    when 'g'
        get_year
        get_month
        get_day
        # confirm birthday
        calculate_age
    when 's'
      christ_sleeps
    when 'c'
      converter
end
  end
  response = menu
end

