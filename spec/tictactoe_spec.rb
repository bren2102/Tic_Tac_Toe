require './lib/logic.rb'

describe GameLogic do
  describe "#validate_user_name" do
    it 'validates the user name doesnt have spaces' do
      logic = GameLogic.new
      expect(logic.validate_user_name('Miguel Dubois')).to eql(false)
    end
  end
end