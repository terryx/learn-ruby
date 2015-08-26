# remove trailing space
car_model = gets.strip

output = case car_model
         when 'Focus', 'Fiesta' then 'Ford'
         when 'Civic' then 'Honda' else 'Unknown model'
       end

puts "The car company for #{car_model} is ", output
