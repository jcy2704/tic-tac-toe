require './lib/board.rb'
require './lib/player.rb'

describe Game do
  let(:game) { Game.new }

  describe '#start' do
    it 'return true if game start' do
      expect(game.start).to be true
    end
  end

  describe '#reset' do
    it 'reset if yes' do
      expect(game.reset('yes')).to be true
    end

    it 'ends if no' do
      expect(game.reset('no')).to be false
    end
  end
end

describe '' do
  let(:board) { Board.new }
  describe '' do
    it '' do
      expect(board.display_boards).to be_a String
    end
  end

  describe '' do
    it '' do
      expect(board.replace('1', 'X')).to eq('X')
    end
  end

  describe '' do
    it '' do
      expect(board.check('1')).to eq(nil)
    end
  end

end