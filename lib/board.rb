# rubocop:disable Layout/LineLength
class Board
  attr_accessor :slots
  def initialize
    @slots = { '1' => "\s", '2' => "\s", '3' => "\s", '4' => "\s", '5' => "\s", '6' => "\s", '7' => "\s", '8' => "\s", '9' => "\s" }
  end

  def display_boards
    "[#{@slots['1']}]  [#{@slots['2']}]  [#{@slots['3']}]\n 1    2    3\n[#{@slots['4']}]  [#{@slots['5']}]  [#{@slots['6']}]\n 4    5    6\n[#{@slots['7']}]  [#{@slots['8']}]  [#{@slots['9']}]\n 7    8    9"
  end

  def replace(position, value)
    @slots[position] = value
  end

  def check(input)
    return 'INVALID OPTION' unless @slots[input] == "\s"

    return 'VALID'
  end
end

# rubocop:enable Layout/LineLength
