require './magnitude.rb'

def assert_equal(a, b)
  raise "Failure #{a} doesn't equal #{b}" if a != b
end

assert_equal Magnitude.format(100), '100'
assert_equal Magnitude.format(10000), '10K'
assert_equal Magnitude.format(10000000), '10M'
assert_equal Magnitude.format(10000000000), '10B'
assert_equal Magnitude.format(10000000000000), '10T'
