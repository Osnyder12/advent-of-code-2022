require 'pry'

array = []

sum = 0

File.open('data/december-1.txt').each do |line|
  if line != "\n"
    sum += line.to_i
  else
    array << sum
    sum = 0
  end
end

puts "Part one Answer: #{array.max}"

# ==========
# Part 2
# ==========

puts "Part two Answer: #{array.sort.reverse[0..2].sum}"