require 'pry'
OPPONENT_WINS = ['A Z', 'B X', 'C Y']
I_WIN = ['C X', 'A Y', 'B Z']
TIE = ['A X', 'B Y', 'C Z']

SCORE_FOR_SHOOT = {
  X: 1,
  Y: 2,
  Z: 3
}

final = File.open('data/december-2.txt', chomp: true).map do |line|
  hand = line.split(' ').last
  score = SCORE_FOR_SHOOT[hand.to_sym]

  if OPPONENT_WINS.include?(line)
    score
  elsif I_WIN.include?(line)
    score += 6
  else
    score += 3
  end
end

puts "Part one Answer: #{final.sum}"

# ==========
# Part 2
# ==========

OUTCOME = {
  X: 0,
  Y: 3,
  Z: 6
}

A = {
  X: ['Z', 3],
  Y: ['X', 1],
  Z: ['Y', 2]
}

B = {
  X: ['X', 1],
  Y: ['Y', 2],
  Z: ['Z', 3]
}

C = {
  X: ['Y', 2],
  Y: ['Z', 3],
  Z: ['X', 1]
}

final = File.open('data/december-2.txt', chomp: true).map do |line|
  outcome = line.split(' ').last
  opponent_throw = line.split(' ').first

  score = OUTCOME[outcome.to_sym]

  case opponent_throw
  when 'A'
    score += A[outcome.to_sym].last
  when 'B'
    score += B[outcome.to_sym].last
  when 'C'
    score += C[outcome.to_sym].last
  end
end

puts "Part two Answer: #{final.sum}"