require 'raindrops'

describe Raindrops do
  subject(:raindrops) { described_class.new }

  describe '#convert' do
    it 'is a method which does not raise errors and accepts an argument' do
      expect(raindrops).to respond_to(:convert).with(1).argument
    end

    it 'can return Pling' do
      expect(raindrops.convert(3)).to eq('Pling')
    end
  end
end
