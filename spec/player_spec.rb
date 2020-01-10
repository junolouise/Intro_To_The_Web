require 'player'

describe Player do
  subject(:juno) { Player.new('Juno') }
  subject(:ross) { Player.new('Ross') }

  describe '#name' do
    it 'returns the players name' do
      expect(juno.name).to eq 'Juno'
    end
  end

  describe '#hp' do
    it 'returns the players HP' do
      expect(juno.hp).to eq 100
    end
  end

  describe '#reduce_hp' do
    it 'reduces the players HP by 10 when attack is made' do
      expect{juno.reduce_hp}.to change{juno.hp}.from(100).to(90)
    end
  end

  describe '#attack' do
    it 'attacks the player' do
      expect(juno).to receive(:reduce_hp)
      ross.attack(juno)
    end
  end

end

