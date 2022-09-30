greeting = "Welcome!"

player1 = "larry"
health1 = 60

player2 = "curly"
health2 = 125

player3 = "moe"
health3 = 100

player4 = "shemp"
health4 = 90

puts "#{player1.capitalize} has a health of #{health1}"
puts "#{player2.upcase} has a health of #{health2}"
health2 = health1

puts "#{player2.upcase} has a health of #{health2}"
health1 = 30 
puts "#{player1.capitalize} has a health of #{health1}"
puts "#{player2.upcase} has a health of #{health2}"

puts "#{player3.capitalize} has a health of #{health3}.".center(50,"*")
text = "#{player3.capitalize} has a health of #{health3}."
puts text.center(50,"*")


puts "#{player4.capitalize.ljust(50,".")} #{health4} health"

puts 123.to_s.reverse.to_i


#puts "#{player1}'s health is #{health1/9}" 
#puts "#{player1}'s health is #{health1/9.0}"

puts "Players:\n\t#{player1}\n\t#{player2}\n\t#{player3}"