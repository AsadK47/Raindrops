require 'raindrops'

describe Raindrops do
  subject(:raindrops) { described_class.new }

  describe '#convert' do
    it 'has an a convert method which does not raise errors' do
      expect { raindrops.convert }.not_to raise_error
    end
  end
end
