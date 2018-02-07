def encryption (userInput, scale)
	numbers = userInput.chars.map(&:ord)

	if scale > 0
		shift = numbers.map {|i| i + scale}
		if shift < 101
			shift = 132 - (101 - shift) + 1
		end
		encrypted = shift.map {|i| i.chr }.join

	elsif scale < 0
		shift = numbers.map {|i| i + scale}
		encrypted = shift.map {|i| i.chr}.join
	end

	puts "#{userInput}"
	puts "#{encrypted}"
	return encrypted
		
end

def decryption ()
	puts "Please enter an encoded message"
	encrypted = gets.chomp.upcase
	puts "Please enter a scaling factor"
	scale = gets.chomp.to_i

	numbers = encrypted.chars.map(&:ord)

	if scale > 0
		shift = numbers.map{|i| i - scale}
		decrypted = shift.map {|i| i.chr}.join
	elsif scale < 0
		shift = numbers.map{|i| i - scale}
		decrypted = shift.map {|i| i.chr}.join
		
	end
	#puts"#{userInput}"
	puts "#{decrypted}"

end


puts "please enter a string"
input = gets.chomp.upcase
puts ("Please enter a whole number scaleing factor: ")
scale = gets.chomp.to_i
encryption(input, scale)
decryption()