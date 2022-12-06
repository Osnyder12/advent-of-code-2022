number_of_crates = File.readlines('december-5-stack.txt').first.length/4
crate_hash = Hash.new
(1..number_of_crates).each {|count| crate_hash[count] = []}

File.readlines('december-5-stack.txt').each do |line|
  unless line.include?('1')
    boxes = line.split('')
    crate = 1
    index = 1
    while index < line.length do
      letter = boxes[index]

      crate_hash[crate] << letter unless letter == " "
    index += 4
    crate += 1
    end
  end
end

File.readlines('december-5-moves.txt', chomp: true).each do |line|
  moves_array = line.delete('movefromto').split(' ')

  number_to_move = moves_array[0].to_i
  starting_row_number = moves_array[1].to_i
  ending_row_number = moves_array[2].to_i

  starting_row = crate_hash[starting_row_number]
  ending_row = crate_hash[ending_row_number]
  letters_to_move = starting_row.shift(number_to_move.to_i).reverse
  # part 2: letters_to_move = starting_row.shift(number_to_move.to_i)

  new_row = letters_to_move.concat(ending_row)

  crate_hash[ending_row_number] = new_row
end

final = crate_hash.values.map do |crate|
  crate.first
end

puts final.join

# Part 2:

# Remove the .reverse from the letters_to_move variable on line 29