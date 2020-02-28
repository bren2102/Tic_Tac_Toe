require './lib/logic.rb'
require './lib/player.rb'

describe GameLogic do
  describe "#validate_user_name" do
    it 'validates the user name doesnt have spaces' do
      logic = GameLogic.new
      expect(logic.validate_user_name('Miguel Dubois')).to eql(false)
    end
  end
end

describe Player do
  describe "#read_name" do
    it 'returns the name of the player' do
      player = Player.new('name')
      expect(player.read_name).to eql('name')
    end
  end
   describe "#read_score" do
    it 'returns the score of the player' do
      player = Player.new('name')
      expect(player.read_score).to eql(0)
    end
  end
end