#MM
print ("Codigo de matricula: ") # Registration code
registration = gets.chomp()

print ("Valor maximo da geracao: ") # Max value to generate numbers between 0 and the number you inform
maximum = gets.chomp()

rejected = 0      # Incorrect numbers generated during the process
reformulated = "" # To compose the registration again
x = 0             # Index to control hits

while x != registration.length
	number = rand( Integer( maximum ) )
	
	if number == Integer( registration[ x ] )
		x += 1
		reformulated += number.to_s
	else
		rejected += 1
	end
	
end

print ("Numeros rejeitados: " ) # Rejected numbers, that wasn't match with the original
puts rejected

print ("Numero: " ) # The original number informed at the begin
puts reformulated
