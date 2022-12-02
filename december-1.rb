array = []

sum = 0

File.open('december-1.txt').each do |line|
  if line != "\n"
    sum += line.to_i
  else
    array << sum
    sum = 0
  end
end

puts array.max