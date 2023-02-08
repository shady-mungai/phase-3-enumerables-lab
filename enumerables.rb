require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  food_names = spicy_foods.map { |food|  food[:name] }
  
   food_names
end

 get_names(spicy_foods)

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  hot_foods = spicy_foods.filter {|food|  food[:heat_level]>5 }

  hot_foods
end

spiciest_foods(spicy_foods)

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)

  spicy_foods.map do |food| 
  heat_level =  "🌶" * food[:heat_level] 

  puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"


end
end
print_spicy_foods(spicy_foods)
# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  sorted = spicy_foods.find {|food| food[:cuisine] == cuisine}
  # puts sorted
  sorted
end

get_spicy_food_by_cuisine(spicy_foods, "Thai")

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  sorted_by_heat = spicy_foods.sort_by { |food| food[:heat_level]}
  sorted_by_heat
end

sort_by_heat(spicy_foods)

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  hot_foods = spicy_foods.filter {|food|  food[:heat_level]> 5 }

  hot_foods.map do |hot_food| 
  heat_level =  "🌶" * hot_food[:heat_level] 

  spicy_foods = "#{hot_food[:name]} (#{hot_food[:cuisine]}) | Heat Level: #{heat_level}"

 puts spicy_foods
  end
end

print_spiciest_foods(spicy_foods)

def average_heat_level(spicy_foods)
  sum = spicy_foods.sum { |food| food[:heat_level]}
  average = sum / 3
  average
end

average_heat_level(spicy_foods)