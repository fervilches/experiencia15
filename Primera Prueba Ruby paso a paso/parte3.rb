
def approved(default_score)
  file = File.open('students.csv', 'r')
  students = file.readlines
  file.close
  new_students = []
  students.each { |line| new_students.push(line.split(', ').map(&:chomp)) }
  new_students.map do |score|
    name = score.shift
    default_score == 5
    if get_average(score) >= default_score
        puts "#{name} aprobó"
end
end
end


def average_score
  file = File.open('students.csv', 'r')
  students = file.readlines
  file.close
  new_students = []
  students.each { |line| new_students.push(line.split(', ').map(&:chomp)) }
  new_students.each do |score|
        name = score.shift
        prom = get_average(score)
        file.puts "El promedio de #{name} es #{prom.to_f.round(1)}"
    end
   file.close
end


def get_average(score)
  sum = 0
  score.each do |ele|
    unless ele == 'A'
      sum +=  ele.to_i
end
end
return prom = sum / 5.to_f
end

puts approved(5)
