# rubocop:disable Layout/LineLength

# Class Game
class Game
  def initialize
    @start = false
    @reset = false
  end

  def start
    @start = true
    @start
  end

  def clear
    system 'clear'
    system 'cls'
  end

  def reset(input)
    @reset = true if input.include?('y' || 'yes')
    @reset = false if input.include?('n' || 'no')
    @reset
  end
end

# Creates a Board Class
class Board
  attr_accessor :slots

  def initialize
    @slots = { '1' => "\s", '2' => "\s", '3' => "\s", '4' => "\s", '5' => "\s", '6' => "\s", '7' => "\s", '8' => "\s", '9' => "\s" }
    @win = false
  end

  def display_boards
    "[#{@slots['1']}]  [#{@slots['2']}]  [#{@slots['3']}]\n 1    2    3\n[#{@slots['4']}]  [#{@slots['5']}]  [#{@slots['6']}]\n 4    5    6\n[#{@slots['7']}]  [#{@slots['8']}]  [#{@slots['9']}]\n 7    8    9"
  end

  def replace(position, value)
    @slots[position] = value
  end

  def check(input)
    return 'INVALID OPTION' unless @slots[input] == "\s"
  end

  def win?
    @win = true if row_winner || col_winner || diag_winner
    @win
  end

  def row_winner
    @slots.values.first(3).all?('X') ||
      @slots.values.first(3).all?('O') ||
      @slots.slice('4', '5', '6').values.all?('X') ||
      @slots.slice('4', '5', '6').values.all?('O') ||
      @slots.values.last(3).all?('X') ||
      @slots.values.last(3).all?('O')
  end

  def col_winner
    @slots.slice('1', '4', '7').values.all?('X') ||
      @slots.slice('2', '5', '8').values.all?('X') ||
      @slots.slice('3', '6', '9').values.all?('X') ||
      @slots.slice('1', '4', '7').values.all?('O') ||
      @slots.slice('2', '5', '8').values.all?('O') ||
      @slots.slice('3', '6', '9').values.all?('O')
  end

  def diag_winner
    @slots.slice('1', '5', '9').values.all?('X') ||
      @slots.slice('1', '5', '9').values.all?('O') ||
      @slots.slice('3', '5', '7').values.all?('X') ||
      @slots.slice('3', '5', '7').values.all?('O')
  end
end

# rubocop:enable Layout/LineLength
