def parse_movies(name, date, studio, category, votes)
votes = votes.split(', ').map { |e|  e.chomp }
puts "buenos: #{votes.count('good')} malos: #{votes.count('bad')}"
end
file = File.open('datamovies.txt', 'r')
movies = file.readlines
file.close


votes = []
movies.each_slice(5) do |slice|
  #parse_movies(*slice)
  votes.push(slice[4].split(', ').map { |e| e.chomp })
end

print votes.map{|movie| movie.count('good')}
