#!/usr/bin/env ruby

puts 'Hello World!'
puts ''
on = true

puts 'Welcome to Tic Tac Toe! To play use X or O to fill the sapces on the board'
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

turn = 0
invalid = true
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
  elsif ![1, 2, 3, 4, 5, 6, 7, 8, 9].include?(position.to_i)
    puts 'INVALID INPUT TRY USING 1 TO 9'
    puts ''
    return invalid
  end

  win = rand(0..9)
  if win <= 5 && turn >= 4
    puts "#{player1} Won this game! #{player2} Good luck next time!"
    on = false
  elsif win <= 5 && turn >= 4
    puts "#{player1} Won this game! #{player2} Good luck next time!"
    on = false
  elsif turn == 9
    puts 'The game has ended in a DRAW! GG WP'
  end
  turn += 1
end
