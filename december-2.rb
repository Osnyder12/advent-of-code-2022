OPPONENT_WINS = ['A Z', 'B X', 'C Y']
I_WIN = ['C X', 'A Y', 'B Z']

SCORE_FOR_SHOOT = {
  X: 1,
  Y: 2,
  Z: 3
}

final = File.open('data/december-2.txt').map do |line|
  line.strip!
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

puts final.sum