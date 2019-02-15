class Raindrops
  def convert(n)
    if is_a_factor_of_3_nums?(n, 3, 5, 7)
      'PlingPlangPlong'
    elsif is_a_factor_of_2_nums?(n, 5, 7)
      'PlangPlong'
    elsif is_a_factor_of_2_nums?(n, 3, 7)
      'PlingPlong'
    elsif is_a_factor_of_2_nums?(n, 3, 5)
      'PlingPlang'
    elsif is_a_factor_of_1_nums?(n, 3)
      'Pling'
    elsif is_a_factor_of_1_nums?(n, 5)
      'Plang'
    elsif is_a_factor_of_1_nums?(n, 7)
      'Plong'
    else
      n
    end
  end

  private

  def is_a_factor_of_1_nums?(n, a)
    n % a == 0
  end

  def is_a_factor_of_2_nums?(n, a, b)
    n % a == 0 && n % b == 0
  end

  def is_a_factor_of_3_nums?(n, a, b, c)
    n % a == 0 && n % b == 0 && n % c == 0
  end
end
