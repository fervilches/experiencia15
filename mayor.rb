puts 'ingresa un valor'
 a = gets.chomp.to_i

puts 'ingresa otro valor'
 b= gets.chomp.to_i

if a > b
  puts 'a es mayor'
elsif a == b
  puts 'a y b son iguales'
else
  puts 'b es mayor'
end
