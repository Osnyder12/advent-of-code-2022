require 'pry'

priority = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

final = File.open('data/december-3.txt').map do |line|
  compartments = line.chars.each_slice(line.length/2).map(&:join)

  c1 = compartments[0].split('').uniq
  c2 = compartments[1].split('').uniq

  c3 = c1.concat(c2)

  wrong_value = c3.detect{ |e| c3.count(e) > 1 }

  priority.index(wrong_value) + 1
end

puts "Part one Answer: #{final.sum}"

# ==========
# Part 2
# ==========
sum = 0

File.readlines('data/december-3.txt', chomp: true).each_slice(3) do |line|
  c1, c2, c3 = line

  authorization_letter = c1.split('') & c2.split('') & c3.split('')

  sum += (priority.index(authorization_letter.first) + 1)
end

puts "Part two Answer: #{sum}"