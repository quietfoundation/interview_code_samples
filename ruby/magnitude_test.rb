require './magnitude.rb'

def assert_equal(a, b)
  str = Magnitude.format(a)
  raise "Failure #{str} doesn't equal #{b}" if str != b
end

assert_equal 0, '0'
assert_equal 10, '10'
assert_equal 23456, '23K'
assert_equal 312344000, '312M'
assert_equal 1454000000, '1B'
assert_equal 12344000000000, '12T'