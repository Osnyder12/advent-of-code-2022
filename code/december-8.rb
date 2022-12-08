lines = File.readlines('data/december-8.txt', chomp: true)
row_start = 0
row_end = 3
tree_counter = 0
while row_end - 3 <= lines.count do
  row1, row2, row3 = lines[row_start..row_end]
  row1 = row1.split('').map(&:to_i)
  row2 = row2.split('').map(&:to_i)
  row3 = row3.split('').map(&:to_i)

  row2.each_with_index do |n, index|
    next if index == 0 || index == row2.count - 1
    next if row2[index-1] < n || row2[index+1] < n
    next if row1[index] < n || row3[index] < n

    tree_counter += 1
  end
  row_end += 1
end

puts "Problem 1 solution: #{tree_counter}."
