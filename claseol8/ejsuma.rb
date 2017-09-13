file = File.open('suma.txt', 'r')
data = file.readlines
file.close

puts data

suma = data.inject(0){|acu, num| acu + num.split(' ')[2].to_i}
puts suma
