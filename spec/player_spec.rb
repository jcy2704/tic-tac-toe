require_relative '../lib/player'

describe Player do
  let(:tokens) { 'X' || 'O' }
  let(:player) { Player.new('player1') }

  describe '#token' do
    it 'gives player a token (X, O)' do
      expect(player.token).to(satisfy { |token| token.include?('X') || token.include?('O') })
    end
  end

  describe '#won' do
    it 'if won increase point' do
      expect(player.won).to be_an(Integer)
    end
  end

  describe '#score' do
    it 'return total score to be integer' do
      expect(player.score).to be_an(Integer)
    end
  end
end

describe '#leftover' do
  let(:two) { '' }

  it 'assign leftover token' do
    expect(leftover('X', two)).to eq('O')
    expect(leftover('O', two)).to eq('X')
  end
end
