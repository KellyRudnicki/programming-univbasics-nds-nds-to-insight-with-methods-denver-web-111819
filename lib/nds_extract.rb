require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  directors_database
  result = {}
  directors_index = 0
  
  while  directors_index < directors_database.length do 
    directors_name = directors_database[directors_index][:name]
    directors_data = directors_database[directors_index]
    result[directors_name] = gross_for_director[directors_data]
    
    directors_index += 1
  end
  
  nil
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

  film_index = 0
  totals = 0

  while film_index < director_data[:movies].length do
    totals += director_data[:movies][film_index][:worldwide_gross]
	  film_index += 1
  end

  totals
  
end
