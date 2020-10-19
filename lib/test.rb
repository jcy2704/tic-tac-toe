

def win?
  @win = false
  @win = true if @slots[1] == @slots[2] && @slots[2] == @slots[3]
  @win = true if @slots[4] == @slots[5] && @slots[5] == @slots[6]
  @win = true if @slots[7] == @slots[8] && @slots[8] == @slots[9]
  @win = true if @slots[1] == @slots[4] && @slots[4] == @slots[7]
  @win = true if @slots[2] == @slots[5] && @slots[5] == @slots[8]
  @win = true if @slots[3] == @slots[6] && @slots[6] == @slots[9]
  @win = true if @slots[1] == @slots[5] && @slots[5] == @slots[9]
  @win = true if @slots[7] == @slots[5] && @slots[5] == @slots[3]
  @win
end

if token ==[1, 2, 3]
p player.win?