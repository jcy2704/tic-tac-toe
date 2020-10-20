# frozen_string_literal: true

# Creates a Player
class Player
  attr_accessor :name
  def initialize(name)
    @name = name
    @players = {}
    @tokens = %w[X O]
    @points = 0
  end

  def token
    @tokens.shuffle.each { |n| return n }
  end

  def won(player)
    @points += 1
    @players[player] = @points
  end

  def score(player)
    @players[player]
  end
end

def leftover(one, two)
  two = 'O' if one == 'X'
  two = 'X' if one == 'O'
  two
end
