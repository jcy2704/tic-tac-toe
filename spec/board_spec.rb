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
