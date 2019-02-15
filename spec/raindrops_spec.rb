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
      expect(raindrops.convert(30)).to eq('PlingPlang')
    end

    it 'can return PlingPlong if the number is factor of 3 and 7' do
      expect(raindrops.convert(21)).to eq('PlingPlong')
    end
  end
end
