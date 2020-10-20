# frozen_string_literal: true

# Creates a Player
class Player
  attr_accessor :name
  def initialize(name)
    @name = name
    @players = {}
    @tokens = %w[X O]
    @points = 0
    @players[@name] = @points
  end

  def token
    @tokens.shuffle.each { |n| return n }
  end

  def won
    @points += 1
    @players[@name] = @points
  end

  def score
    @players[@name]
  end
end

def leftover(one, two)
  two = 'O' if one == 'X'
  two = 'X' if one == 'O'
  two
end
