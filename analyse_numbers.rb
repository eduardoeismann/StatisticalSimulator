#MM
print "Codigo de registro: "     # Registration code
registration = gets.chomp()

print "Valor maximo da geracao: " # Max value to generate numbers between 0 and the number you inform
maximum = gets.chomp()

sampling = Array.new   # It'll stores all the final values generated to each register

# This three variables will be analysed at the end of the 10.times loop
average = 0
weigthed_average = 0   # Not implemented yet
standart_deviation = 0 # Not implemented yet

10.times {
	rejected = 0      # Incorrect numbers generated during the process
	x = 0             # Index to control hits
	
	while x != registration.length
		number = rand( Integer( maximum ) + 1 )
		
		if number == Integer( registration[ x ] )
			x += 1
		else
			rejected += 1
		end
		
	end
	
	sampling[ x ] = rejected # Rejected numbers, that wasn't match with the original
	
	average += Integer( sampling[ x ] )
	
}

puts "Media encontrada: " + ( average / 10 ).to_s
