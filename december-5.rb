require 'pry'

number_of_crates = File.readlines('december-5-stack.txt').first.length/4
crate_hash = Hash.new
(1..number_of_crates).each {|count| crate_hash[count] = []}

File.readlines('december-5-stack.txt').each do |line|
  boxes = line.split('')
  crate = 1
  index = 1
  while index < line.length do
    letter = boxes[index]

    crate_hash[crate] << letter 
  index += 4
  crate += 1
  end
end

final = File.readlines('december-5-moves.txt', chomp: true).each do |line|
  moves_array = line.delete('movefromto').split(' ')
end

#  1st number == number to move
#  2nd number == starting row
#  3rd number == ending row








