content =  gets.chomp

file = File.open('secreto.txt', 'w')
file.puts content
file.close
