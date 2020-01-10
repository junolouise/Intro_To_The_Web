require 'player'

describe Player do
  subject(:juno) { Player.new('Juno') }

  describe '#name' do
    it 'returns the players name' do
      expect(juno.name).to eq 'Juno'
    end
  end
end