#MM
print "Codigo de registro: "       # Registration code
registration = gets.chomp()

print "Valor maximo da geracao: "  # Max value to generate numbers between 0 and the number you inform
maximum = gets.chomp()

sampling = Array.new               # It'll stores all the final values generated to each register

average = 0
weigthed_average = 0
divider = 0
standart_deviation = 0             # Not implemented yet
index = 0                          # Indext to control 10.times loop

10.times {
	rejected = 0                   # Incorrect numbers generated during the process
	x = 0                          # To control single hit
	
	while x != registration.length
		number = rand( Integer( maximum ) + 1 )
		
		if number == Integer( registration[ x ] )
			x += 1
		else
			rejected += 1
		end
		
	end
	
	sampling[ index ] = rejected   # Rejected numbers, that wasn't match with the original
	
	average += Integer( sampling[ index ] )
	
	weigthed_average += Integer( sampling[ index ] ) * index
	
	divider += index
	index += 1
	
}

puts "Media encontrada: " + ( average / 10 ).to_s
puts "Media ponderada: " + ( weigthed_average / divider ).to_s
