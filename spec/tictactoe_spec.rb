require './lib/logic.rb'
require './lib/player.rb'

describe GameLogic do
  describe '#validate_user_name' do
    it 'validates the user name doesnt have spaces' do
      logic = GameLogic.new
      expect(logic.validate_user_name('Miguel Dubois')).to eql(false)
    end
  end
  describe '#validate_input_board_cell' do
    it 'validates empty cells between 1 - 9' do
      logic = GameLogic.new
      expect(logic.validate_input_board_cell([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 1, 2)).to eql('')
    end
  end
  describe '#validate_input_play_again' do
    it 'validates if play again' do
      logic = GameLogic.new
      expect(logic.validate_input_play_again('y')).to eql(true)
    end
  end
  describe '#check_tie' do
    it 'validates if is a tie' do
      logic = GameLogic.new
      expect(logic.check_tie([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])).to eql(false)
    end
  end
  describe '#check_win_one' do
    it 'validates if is a winning move' do
      logic = GameLogic.new
      expect(logic.check_win_one([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).to eql(false)
    end
  end
  describe '#check_win_two' do
    it 'validates if is a winning move' do
      logic = GameLogic.new
      expect(logic.check_win_two([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).to eql(false)
    end
  end
  describe '#check_win_three' do
    it 'validates if is a winning move' do
      logic = GameLogic.new
      expect(logic.check_win_three([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).to eql(false)
    end
  end
  describe '#check_win_four' do
    it 'validates if is a winning move' do
      logic = GameLogic.new
      expect(logic.check_win_four([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).to eql(false)
    end
  end
  describe '#check_all_wins' do
    it 'validates if is a winning move' do
      logic = GameLogic.new
      expect(logic.check_all_wins([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 'X')).to eql(false)
    end
  end
  describe '#win' do
    it 'validates if the player wins' do
      logic = GameLogic.new
      expect(logic.win([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 2, 'name')).to eql('')
    end
  end
end

describe Player do
  describe '#read_name' do
    it 'returns the name of the player' do
      player = Player.new('name')
      expect(player.read_name).to eql('name')
    end
  end
  describe '#read_score' do
    it 'returns the score of the player' do
      player = Player.new('name')
      expect(player.read_score).to eql(0)
    end
  end
end
