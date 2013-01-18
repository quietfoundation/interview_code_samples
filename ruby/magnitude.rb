module Magnitude
  K = 1000
  M = 1000000
  B = 1000000000
  T = 1000000000000

  module_function

  def magnitude_format(num, suffix)
    "#{num.to_i}#{suffix}"
  end

  def format(num)
    case
    when num < K
      num.to_s
    when num < M
      magnitude_format(num/K, 'K')
    when num < B
      magnitude_format(num/M, 'M')
    when num < T
      magnitude_format(num/B, 'B')
    else
      magnitude_format(num/T, 'T')
    end
  end
end
