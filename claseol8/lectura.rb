file = File.open('sample.txt' , 'r')
data = file.readlines
file.close


suma = data.inject(0){|ac, product| ac + product.split(' ')[1].to_i}
puts suma / data.length
