# frozen_string_literal: true

# Creates a Player
class Player
  attr_accessor :name
  def initialize(name)
    @name = name
    @tokens = %w[X O]
  end

  def token
    @tokens.shuffle.each { |n| return n }
  end
end

def leftover(one, two)
  two = 'O' if one == 'X'
  two = 'X' if one == 'O'
  two
end
