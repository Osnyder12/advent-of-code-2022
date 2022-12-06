string = File.readlines('data/december-6.txt').first

s = 0
a = []
while s + 4 < string.length do
  check_string = string[s,4]

  a << s + 4 if check_string.split('').uniq.length == 4

  s += 1
end

puts "Part one Answer: #{a.first}"

# ==========
# Part 2
# ==========

string = File.readlines('data/december-6.txt').first

s = 0
b = []
while s + 14 < string.length do
  check_string = string[s,14]

  b << s + 14 if check_string.split('').uniq.length == 14

  s += 1
end

puts "Part two Answer: #{b.first}"
