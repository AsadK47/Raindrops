class Raindrops
  def convert(n)
    if n % 3 == 0 && n % 5 == 0 && n % 7 == 0
      'PlingPlangPlong'
    elsif n % 5 == 0 && n % 7 == 0
      'PlangPlong'
    elsif n % 3 == 0 && n % 7 == 0
      'PlingPlong'
    elsif n % 3 == 0 && n % 5 == 0
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
end
