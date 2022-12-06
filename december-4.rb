final = File.open('data/december-4.txt').map do |line|
  line.strip!
  
  shifts = line.split(',')

  one = shifts[0].split('-')
  two = shifts[1].split('-')

  next unless (one[0]..one[1]).cover?(two[0]..two[1]) || (two[0]..two[1]).cover?(one[0]..one[1])
  1
end

puts final.compact.sum