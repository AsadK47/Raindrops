class Raindrops
  def initialize
    @map = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong', 9 => 'Plung' }
  end

  def convert(input)
    string = ''
    @map.each do |key, value|
      (input % key).zero? ? string += value : nil
    end
    string.length.zero? ? input.to_s : string
  end
end
