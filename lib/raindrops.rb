class Raindrops
  def convert(input)
    if is_a_factor_of_3_nums?(input, 3, 5, 7)
      'PlingPlangPlong'
    elsif is_a_factor_of_2_nums?(input, 5, 7)
      'PlangPlong'
    elsif is_a_factor_of_2_nums?(input, 3, 7)
      'PlingPlong'
    elsif is_a_factor_of_2_nums?(input, 3, 5)
      'PlingPlang'
    elsif is_a_factor_of_1_nums?(input, 3)
      'Pling'
    elsif is_a_factor_of_1_nums?(input, 5)
      'Plang'
    elsif is_a_factor_of_1_nums?(input, 7)
      'Plong'
    else
      input
    end
  end

  private

  def is_a_factor_of_1_nums?(input, a)
    input % a == 0
  end

  def is_a_factor_of_2_nums?(input, a, b)
    input % a == 0 && input % b == 0
  end

  def is_a_factor_of_3_nums?(input, a, b, c)
    input % a == 0 && input % b == 0 && input % c == 0
  end
end
