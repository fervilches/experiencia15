def scanner(filename, word)
  file = File.open(filename, 'r')
  data = file.readlines.map{ |w| w.chomp}
  file.close
  #print data
  data.include?(word)
end

puts scanner('palabras.txt', 'palabra2')
