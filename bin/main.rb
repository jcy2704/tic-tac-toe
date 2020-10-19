#!/usr/bin/env ruby
# rubocop:disable Layout/LineLength

require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

puts 'Hello World!'
puts ''
on = true

# slots = { '1' => "\s", '2' => "\s", '3' => "\s", '4' => "\s", '5' => "\s", '6' => "\s", '7' => "\s", '8' => "\s", '9' => "\s" }

puts 'Welcome to Tic Tac Toe! To play use X or O to fill the spaces on the board and try to connect 3.'
puts ''



puts 'Enter your name Player 1: '
nickname1 = gets.chomp
player_one = Player.new(nickname1)
puts "player one nickname: #{nickname1} will be X"

puts 'Enter your name Player 2: '
nickname2 = gets.chomp
player_two = Player.new(nickname2)
puts "player two nickname: #{nickname2} will be O"



puts 'Displaying the game board'
puts ''

d_board = Board.new
puts d_board.display_boards

turn = 0
while on == true
  if turn.even?
    puts "#{nickname1} is your turn! What will be your play?"
    token = 'X'
  else
    puts "#{nickname2} is your turn! What will be your play?"
    token = 'o'
  end
  position = gets.chomp
  d_board.check(position)
  d_board.replace(position, token)
  puts ''

  if [1, 2, 3, 4, 5, 6, 7, 8, 9].include?(position.to_i)
    if turn.even?
      puts "#{nickname1} placed X in #{position}"
    else
      puts "#{nickname2} placed O in #{position}"
    end
    puts ''
    puts d_board.display_boards
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
