require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#attack' do
    it 'damages the player' do
      expect(subject.player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end

  describe 'current_turn' do 
    it 'starts as player 1' do 
      expect(subject.current_turn).to eq player_1
    end
  end

  describe 'switch_turns' do
    it 'switches the turn' do
      subject.switch_turns
      expect(subject.current_turn).to eq player_2
    end
  end

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end
end