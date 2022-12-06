final = File.open('data/december-4.txt').map do |line|
  line.strip!
  
  shifts = line.split(',')

  one = shifts[0].split('-')
  two = shifts[1].split('-')

  if one[0].to_i >= two[0].to_i && one[1].to_i <= two[1].to_i
    1
  elsif two[0].to_i >= one[0].to_i && two[1].to_i <= one[1].to_i
    1
  end
end

puts final.compact.sum