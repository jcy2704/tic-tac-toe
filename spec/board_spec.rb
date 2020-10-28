require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

describe Game do
  let(:game) { Game.new }

  describe '#start' do
    it 'return true if game start' do
      expect(game.start).to be true
    end
  end

  describe '#clear' do
    it 'clear the terminal' do
      expect(game.clear).to be true
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

describe Board do
  let(:board) { Board.new }

  describe '#display_boards' do
    it 'check display_boards is string' do
      expect(board.display_boards).to be_a String
    end
  end

  describe '#replace' do
    it 'replace value in board' do
      expect(board.replace('1', 'X')).to eq('X')
    end
  end

  describe '#check' do
    it 'check if empty' do
      expect(board.check('1')).to eq(nil)
    end

    it 'return error if not empty' do
      board.replace('1', 'X')
      expect(board.check('1')).to eq('INVALID OPTION')
    end
  end

  describe '#win?' do
    it 'return true if 3 tokens are connected' do
      board.replace('1', 'X')
      board.replace('2', 'X')
      board.replace('3', 'X')

      expect(board.win?).to be true
    end

    it 'return false if tokens are not aligned' do
      board.replace('4', 'X')
      board.replace('5', 'O')
      board.replace('6', 'X')

      expect(board.win?).to be false
    end
  end

  describe '#row_winner' do
    it 'checks if row aligned with same token' do
      board.replace('1', 'X')
      board.replace('2', 'X')
      board.replace('3', 'X')

      expect(board.row_winner).to be true
    end

    it 'return false if not aligned' do
      board.replace('4', 'X')
      board.replace('5', 'O')
      board.replace('6', 'X')

      expect(board.row_winner).to be false
    end
  end

  describe '#col_winner' do
    it 'checks if columns aligned with same token' do
      board.replace('1', 'X')
      board.replace('4', 'X')
      board.replace('7', 'X')

      expect(board.col_winner).to be true
    end

    it 'return false if not aligned' do
      board.replace('2', 'X')
      board.replace('5', 'O')
      board.replace('8', 'X')

      expect(board.col_winner).to be false
    end
  end

  describe '#diag_winner' do
    it 'checks if diagonal aligned with same token' do
      board.replace('1', 'X')
      board.replace('5', 'X')
      board.replace('9', 'X')

      expect(board.diag_winner).to be true
    end

    it 'return false if not aligned' do
      board.replace('1', 'X')
      board.replace('5', 'O')
      board.replace('9', 'X')

      expect(board.diag_winner).to be false
    end
  end
end
