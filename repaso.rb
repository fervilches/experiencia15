nombres = ['Violeta', 'Martín', 'javier', 'Paula']
 print nombres

largos = nombres.map do |nombre|
  nombre.length
end

nombres_largos = nombres.select do |nombre|
  nombre.length > 5
end

print nombres_largos
