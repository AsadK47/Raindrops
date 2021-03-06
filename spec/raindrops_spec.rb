require 'raindrops'

describe Raindrops do
  subject(:raindrops) { described_class.new }

  describe '#convert' do
    it 'is a method which does not raise errors and accepts an argument' do
      expect(raindrops).to respond_to(:convert).with(1).argument
    end

    it 'can return Pling if the number is 3' do
      expect(raindrops.convert(3)).to eq('Pling')
    end

    it 'can return Plang if the number is 5' do
      expect(raindrops.convert(5)).to eq('Plang')
    end

    it 'can return Plong if the number is 7' do
      expect(raindrops.convert(7)).to eq('Plong')
    end

    it 'can return Pling if the number is 6; a factor of 3' do
      expect(raindrops.convert(6)).to eq('Pling')
    end

    it 'can return Plang if the number is 10; a factor of 5' do
      expect(raindrops.convert(10)).to eq('Plang')
    end

    it 'can return Plong if the number is 14; a factor of 7' do
      expect(raindrops.convert(14)).to eq('Plong')
    end

    it 'can return PlingPlang if the number is a factor of 3 and 5' do
      expect(raindrops.convert(15)).to eq('PlingPlang')
    end

    it 'can return PlingPlong if the number is factor of 3 and 7' do
      expect(raindrops.convert(21)).to eq('PlingPlong')
    end

    it 'can return PlangPlong for factors of 5 and 7' do
      expect(raindrops.convert(35)).to eq('PlangPlong')
    end

    it 'can return PlingPlangPlong for factors of 3, 5 and 7' do
      expect(raindrops.convert(105)).to eq('PlingPlangPlong')
    end

    it 'can return Plung for factors of 9' do
      expect(raindrops.convert(9)).to eq('PlingPlung')
    end

    it 'can return PlingPlangPlongPlung for factors of 3, 5, 7 and 9' do
      expect(raindrops.convert(945)).to eq('PlingPlangPlongPlung')
    end

    context 'numbers not factors of 3, 5 or 7 are returned as is such as...' do
      it 'number 1' do
        expect(raindrops.convert(1)).to eq("1")
      end

      it 'number 4' do
        expect(raindrops.convert(4)).to eq("4")
      end

      it 'number 17' do
        expect(raindrops.convert(17)).to eq("17")
      end
    end
  end
end
