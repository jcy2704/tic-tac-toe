#!/usr/bin/env ruby

require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

on = true

puts ''
puts 'Welcome to Tic Tac Toe! To play use X or O to fill the spaces on the board and try to connect 3.'
puts ''

puts 'Enter your name Player 1: '
nickname1 = gets.chomp.capitalize
player_one = Player.new(nickname1)
puts ''

puts 'Enter your name Player 2: '
nickname2 = gets.chomp.capitalize
player_two = Player.new(nickname2)
puts ''
token1 = player_one.token
puts "#{nickname1} will be #{token1}"
puts ''
token2 = player_two.token
puts "#{nickname2} will be #{token2}"
puts ''

puts 'Displaying the game board'
puts ''

d_board = Board.new
puts d_board.display_boards
puts ''

turn = 1
while on == true
  checked = false
  until checked == true
    if turn.odd?
      puts "#{nickname1} is your turn! What will be your play?"
      token = token1
    else
      puts "#{nickname2} is your turn! What will be your play?"
      token = token2
    end
    position = gets.chomp
    check = d_board.check(position)
    if check == 'INVALID OPTION'
      puts ''
      puts 'INVALID OPTION! PLEASE INPUT IN AN EMPTY CELL'
    else
      d_board.replace(position, token)
      checked = true
    end
    puts ''
  end

  if [1, 2, 3, 4, 5, 6, 7, 8, 9].include?(position.to_i)
    if turn.odd?
      puts "#{nickname1} placed X in slot #{position}"
    else
      puts "#{nickname2} placed O in slot #{position}"
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
  elsif turn >= 7 # DRAW
    puts 'The game has ended in a DRAW! GG WP'
    on = false
  end
  turn += 1
end

