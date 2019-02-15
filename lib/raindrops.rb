class Raindrops
  def convert(input)
    if a_factor_of_3_nums?(input, 3, 5, 7)
      'PlingPlangPlong'
    elsif a_factor_of_2_nums?(input, 5, 7)
      'PlangPlong'
    elsif a_factor_of_2_nums?(input, 3, 7)
      'PlingPlong'
    elsif a_factor_of_2_nums?(input, 3, 5)
      'PlingPlang'
    elsif a_factor_of_1_nums?(input, 3)
      'Pling'
    elsif a_factor_of_1_nums?(input, 5)
      'Plang'
    elsif a_factor_of_1_nums?(input, 7)
      'Plong'
    else
      input
    end
  end

  private

  def a_factor_of_1_nums?(input, factor1)
    (input % factor1).zero?
  end

  def a_factor_of_2_nums?(input, factor1, factor2)
    (input % factor1).zero? && (input % factor2).zero?
  end

  def a_factor_of_3_nums?(input, factor1, factor2, factor3)
    (input % factor1).zero? && (input % factor2).zero? && (input % factor3).zero?
  end
end
