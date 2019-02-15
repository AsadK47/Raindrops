class Raindrops
  def convert(n)
    if is_a_factor_of_3_nums?(n, 3, 5, 7)
      'PlingPlangPlong'
    elsif factor_of_5_and_7?(n)
      'PlangPlong'
    elsif factor_of_3_and_7?(n)
      'PlingPlong'
    elsif factor_of_3_and_5?(n)
      'PlingPlang'
    elsif factor_of_3?(n)
      'Pling'
    elsif factor_of_5?(n)
      'Plang'
    elsif factor_of_7?(n)
      'Plong'
    else
      n
    end
  end

  private

  def factor_of_3?(n)
    n % 3 == 0
  end

  def factor_of_5?(n)
    n % 5 == 0
  end

  def factor_of_7?(n)
    n % 7 == 0
  end

  def factor_of_3_and_5?(n)
    n % 3 == 0 && n % 5 == 0
  end

  def factor_of_3_and_7?(n)
    n % 3 == 0 && n % 7 == 0
  end

  def factor_of_5_and_7?(n)
    n % 5 == 0 && n % 7 == 0
  end

  def is_a_factor_of_3_nums?(n, a, b, c)
    n % a == 0 && n % b == 0 && n % c == 0
  end
end
