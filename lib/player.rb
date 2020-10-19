
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
