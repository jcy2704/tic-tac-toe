#!/usr/bin/env ruby
# rubocop:disable Layout/LineLength

puts 'Hello World!'
puts ''
on = true

slots = { '1' => "\s", '2' => "\s", '3' => "\s", '4' => "\s", '5' => "\s", '6' => "\s", '7' => "\s", '8' => "\s", '9' => "\s" }

puts 'Welcome to Tic Tac Toe! To play use X or O to fill the spaces on the board and try to connect 3.'
puts ''

puts 'Enter your name Player 1: '
player1 = gets.chomp
puts ''

puts 'Enter your name Player 2: '
player2 = gets.chomp
puts ''

puts "#{player1} will be X"
puts "#{player2} will be O"
puts ''
puts ''

puts 'Displaying the game board'
puts ''

puts "[#{slots['1']}]  [#{slots['2']}]  [#{slots['3']}]\n 1    2    3\n[#{slots['4']}]  [#{slots['5']}]  [#{slots['6']}]\n 4    5    6\n[#{slots['7']}]  [#{slots['8']}]  [#{slots['9']}]\n 7    8    9"
puts ''

turn = 0
while on == true
  if turn.even?
    puts "#{player1} is your turn! What will be your play?"
  else
    puts "#{player2} is your turn! What will be your play?"
  end
  position = gets.chomp
  puts ''

  if [1, 2, 3, 4, 5, 6, 7, 8, 9].include?(position.to_i)
    if turn.even?
      puts "#{player1} placed X in #{position}"
    else
      puts "#{player2} placed O in #{position}"
    end
    puts ''
    puts "[#{slots['1']}]  [#{slots['2']}]  [#{slots['3']}]\n 1    2    3\n[#{slots['4']}]  [#{slots['5']}]  [#{slots['6']}]\n 4    5    6\n[#{slots['7']}]  [#{slots['8']}]  [#{slots['9']}]\n 7    8    9"
    puts ''
  elsif ![1, 2, 3, 4, 5, 6, 7, 8, 9].include?(position.to_i)
    puts 'INVALID INPUT TRY USING 1 TO 9'
    puts ''
  end

  win = rand(0..9)
  if win <= 5 && turn >= 4 # PLAYER 1 WINS
    puts "#{player1} Won this game! #{player2} Good luck next time!"
    on = false
  elsif win <= 5 && turn >= 4 # PLAYER 2 WINS
    puts "#{player1} Won this game! #{player2} Good luck next time!"
    on = false
  elsif turn == 7 # DRAW
    puts 'The game has ended in a DRAW! GG WP'
    on = false
  end
  turn += 1
end

# rubocop:enable Layout/LineLength
