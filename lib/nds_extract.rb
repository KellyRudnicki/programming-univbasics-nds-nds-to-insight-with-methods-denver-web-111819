require 'directors_database'

def directors_totals(nds)
  
  directors_database
  result = {}
  directors_index = 0
  
  while  directors_index < directors_database.length do 
    directors_name = directors_database[directors_index][:name]
    directors_data = directors_database[directors_index]
    result[directors_name] = gross_for_director(directors_data)
    
    directors_index += 1
  end
  
  result 
end

def gross_for_director(director_data)

  film_index = 0
  totals = 0

  while film_index < director_data[:movies].length do
    totals += director_data[:movies][film_index][:worldwide_gross]
	  film_index += 1
  end

  totals
  
end
