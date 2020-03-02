require './lib/logic.rb'
require './lib/player.rb'

describe GameLogic do
  let(:logic) { GameLogic.new }

  describe '#validate_user_name' do
    it 'validates the user name doesnt have spaces' do
      expect(logic.validate_user_name('Miguel')).to eql(true)
    end
    it 'validates the user name is not blank' do
      expect(logic.validate_user_name(' ')).not_to eql(true)
    end
  end
  describe '#validate_input_board_cell' do
    it 'validates empty cells between 1 - 9' do
      expect(logic.validate_input_board_cell([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 1, 2)).to eql('')
    end
    it 'validates if a cell is taken between 1 - 9' do
      expect(logic.validate_input_board_cell(['X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 1, 0)).not_to eql('')
    end
  end
  describe '#validate_input_play_again' do
    it 'validates if the user decides to play again' do
      expect(logic.validate_input_play_again('y')).to eql(true)
    end
    it 'validates if the user chooses any other letter' do
      expect(logic.validate_input_play_again('x')).not_to eql(true)
    end
  end
  describe '#check_tie' do
    it 'validates if is a tie' do
      expect(logic.check_tie([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])).to eql(false)
    end
    it 'validates is not a tie' do
      expect(logic.check_tie([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])).not_to eql(true)
    end
  end
  describe '#check_win_one' do
    it 'validates if is a winning move' do
      expect(logic.check_win_one([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).to eql(false)
    end
    it 'validates if is a winning move negative' do
      expect(logic.check_win_one(['X', 'X', 'X', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).not_to eql(false)
    end
  end
  describe '#check_win_two' do
    it 'validates if is a winning move' do
      expect(logic.check_win_two([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).to eql(false)
    end
    it 'validates if is a winning move negative' do
      expect(logic.check_win_two(['X', ' ', ' ', 'X', ' ', ' ', 'X', ' ', ' '], 'X')).not_to eql(false)
    end
  end
  describe '#check_win_three' do
    it 'validates if is a winning move' do
      expect(logic.check_win_three([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).to eql(false)
    end
    it 'validates if is a winning move negative' do
      expect(logic.check_win_three([' ', 'X', ' ', ' ', 'X', ' ', ' ', 'X', ' '], 'X')).not_to eql(false)
    end
  end
  describe '#check_win_four' do
    it 'validates if is a winning move' do
      expect(logic.check_win_four([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).to eql(false)
    end
    it 'validates if is a winning move negative' do
      expect(logic.check_win_four(['X', ' ', ' ', ' ', 'X', ' ', ' ', ' ', 'X'], 'X')).not_to eql(false)
    end
  end
  describe '#check_all_wins' do
    it 'validates if is a winning move' do
      expect(logic.check_all_wins([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).to eql(false)
    end
    it 'validates if is a winning movenegative' do
      expect(logic.check_all_wins(['X', ' ', ' ', 'X', ' ', ' ', 'X', ' ', ' '], 'X')).not_to eql(false)
    end
  end
  describe '#win' do
    it 'validates if the player wins' do
      expect(logic.win([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 2, 'name')).to eql('')
    end
    it 'validates if the player wins negative' do
      expect(logic.win(['O'.blue, 'O'.blue, 'O'.blue, ' ', ' ', ' ', ' ', ' ', ' '], 2, 'name')).not_to eql('')
    end
  end
end

describe Player do
  let(:player) { Player.new('name') }
  describe '#read_name' do
    it 'returns the name of the player' do
      expect(player.read_name).to eql('name')
    end
    it 'testing if the name is not empty' do
      expect(player.read_name).not_to eql('')
    end
  end
  describe '#read_score' do
    it 'returns the score of the player' do
      expect(player.read_score).to eql(0)
    end
    it 'testing if initialize the score in 0' do
      expect(player.read_score).not_to eql(1)
    end
  end
end
