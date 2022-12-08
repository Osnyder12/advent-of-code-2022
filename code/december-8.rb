#  grab 3 rows start with the 2nd number and check the row before it with the same index
#  and after and the 2 numbers left and right 
#  if all are shorter, += 1

require 'pry'

first_three = File.readlines('data/december-8.txt', chomp: true).each_slice(3)

File.readlines('data/december-8.txt', chomp: true).each_slice(3) do |line|
  
binding.pry
end