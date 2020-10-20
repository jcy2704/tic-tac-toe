#!/usr/bin/env ruby

# rubocop:disable Metrics/BlockNesting

require_relative '../lib/player.rb'
require_relative '../lib/board.rb'
require 'io/console'

system 'clear'
system 'cls'
game = Game.new

puts ''
puts '                        Welcome to Tic Tac Toe!'
puts '                   by Jack Chung and David Leonardo'
puts "\nInstructions: \n"
puts '1. Both players need to input their nicknames.'
puts '2. After naming, you will see your assigned token (X or O)'
puts '3. To win the game you need to connect 3 of your token in a linear way.'
puts "For example:\n      [X] [X] [X]\n      [X] [X] [ ]\n      [X] [ ] [X]"
puts 'Connect 3 straight or diagonally to win'
puts "\n                  PRESS ENTER WHEN YOU ARE READY"
STDIN.noecho(&:gets).chomp
start = game.start
game.clear

sleep 1

puts 'Enter your name Player 1: '
nickname1 = gets.chomp.capitalize
player_one = Player.new(nickname1)
puts ''

puts 'Enter your name Player 2: '
nickname2 = gets.chomp.capitalize
player_two = Player.new(nickname2)
puts ''

game.clear

until start == false
  on = true
  game.clear
  token1 = player_one.token
  puts "#{nickname1} will be #{token1}"
  puts ''
  token2 = leftover(token1, token2)
  puts "#{nickname2} will be #{token2}"
  puts ''

  puts 'Displaying the game board'
  puts ''

  sleep 3

  d_board = Board.new

  puts ''
  puts d_board.display_boards

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
        game.clear
        puts ''
        puts 'INVALID OPTION! PLEASE INPUT IN AN EMPTY CELL'
        sleep 2
        puts ''
        puts d_board.display_boards
      else
        d_board.replace(position, token)
        checked = true
      end
      puts ''
    end
    game.clear

    if [1, 2, 3, 4, 5, 6, 7, 8, 9].include?(position.to_i)
      if turn.odd?
        puts "#{nickname1} placed #{token1} in slot #{position}"
      else
        puts "#{nickname2} placed #{token2} in slot #{position}"
      end
      puts ''
      puts d_board.display_boards
      puts ''
    elsif ![1, 2, 3, 4, 5, 6, 7, 8, 9].include?(position.to_i)
      puts 'INVALID INPUT TRY USING 1 TO 9'
      puts ''
    end

    if d_board.win? == true
      if turn.odd?
        puts "CONGRATULATIONS #{nickname1}! You won!!"
        player_one.won
      else
        puts "CONGRATULATIONS #{nickname2}! You won!!"
        player_two.won
      end
      puts ''
      finish = true
    elsif turn == 9
      puts "GG WP #{nickname1} and #{nickname2}! YOU WENT TO A TIE!"
      finish = true
    end
    if finish == true
      puts 'Do you want to play again? [y/n]'
      choice = gets.chomp.downcase
      if game.reset(choice) == true
        puts 'Here is the scoreboard:'
        puts "#{nickname1}: #{player_one.score} games"
        puts "#{nickname2}: #{player_two.score} games"
        sleep 2
        start = true
      else
        puts 'Here is the scoreboard: '
        puts "#{nickname1}: #{player_one.score} games"
        puts "#{nickname2}: #{player_two.score} games"
        start = false
      end
      on = false
    end
    turn += 1
  end
end

# rubocop:enable Metrics/BlockNesting
