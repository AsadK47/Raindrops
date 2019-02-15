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

    it 'can return Pling if the number is 6' do
      expect(raindrops.convert(6)).to eq('Pling')
    end

    it 'can return Plang if the number is 10' do
      expect(raindrops.convert(10)).to eq('Plang')
    end
  end
end
