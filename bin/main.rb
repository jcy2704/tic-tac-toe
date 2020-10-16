#!/usr/bin/env ruby

puts 'Hello World!'

puts 'Welcome to Tic Tac Toe! To play use X or O to fill the sapces on the board'

puts 'Enter your name Player 1: '
player1 = gets.chomp

puts 'Enter your name Player 2: '
player2 = gets.chomp

puts "#{player1} will be X"
puts "#{player2} will be O"

puts 'Displaying the game board'

puts "#{player1} is your turn! What will be your play?"
player1_position = gets.chomp

puts "#{player1} placed X on #{player1_position}"

puts "#{player2} is your turn! What will be your play?"
player2_position = gets.chomp

puts "#{player2} placed O on #{player2_position}"

puts "#{player1} is your turn! What will be your play?"
player1_position = gets.chomp

puts "#{player1} placed X on #{player1_position}"

puts "#{player2} is your turn! What will be your play?"
player2_position = gets.chomp

puts "#{player2} placed O on #{player2_position}"

puts "#{player1} is your turn! What will be your play?"
player1_position = gets.chomp

puts "#{player1} placed X on #{player1_position}"

puts "#{player2} is your turn! What will be your play?"
player2_position = gets.chomp

puts "#{player2} placed O on #{player2_position}"

puts "#{player2} is your turn! What will be your play?"
player2_position = gets.chomp

puts "#{player2} placed O on #{player2_position}"

puts "#{player1} is your turn! What will be your play?"
player1_position = gets.chomp

puts "#{player1} placed X on #{player1_position}"

puts "#{player2} is your turn! What will be your play?"
player2_position = gets.chomp

puts "#{player2} placed O on #{player2_position}"

puts "#{player1} won the game!"
puts "#{player2} Try better next time"

