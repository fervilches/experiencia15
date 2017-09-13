puts 'Ingresa el password'
pass = gets.chomp

while pass != 'secreto'
  puts 'Ingresa el password'
  pass = gets.chomp
end

puts 'lo lograste'
