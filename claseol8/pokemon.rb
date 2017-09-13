#def pokelist(number, name, class)
#end

file = File.open('pokemon.txt', 'r')
pokedex = file.readlines
file.close

pokedex.each do |pokemon|
  data = pokemon.split(', ').map { |e| e.chomp }
 print data if data[2] == 'Bug'
end
