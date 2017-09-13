product_name = 'Producto1'
price = 170

file = File.open('sample.txt', 'r')
products = file.readlines
file.close

products =  products.map{ |e| e.split(' ')}.to_h

products[product_name] = price

print products

file = File.open('sample.txt', 'a')
products.each do |k, v|
  file.puts "#{k} #{v}"
end
file.close

file = File.open('sample.txt', 'r')
