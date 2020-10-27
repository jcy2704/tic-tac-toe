require './lib/player.rb'

describe Player do
  let(:player) { Player.new('player1') }

  describe '#token' do
    it 'gives player a token (X, O)' do
      expect(player.token).to (satisfy { |token| token.include?('X') || token.include?('O') })
    end
  end

  describe '#won' do
    it 'if won increase point' do
      expect(player.won).to be_an(Integer)
    end
  end
end
