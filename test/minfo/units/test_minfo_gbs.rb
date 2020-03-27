require_relative '../../test__helper.rb'

require 'minitest/autorun'
require_relative '../../../lib/minfo/units/minfo_gbs.rb'

class MinfoGbsTest < Minitest::Test
  def test_additional
    value = 1048576

    gbs = Minfo::MinfoGbs.new(value)
    updated_gbs = gbs + Minfo::MinfoGbs.new(value)

    assert(updated_gbs == Minfo::MinfoGbs.new(value * 2))
  end

  def test_subtraction
    value = 1048576
    value_double = value * 2

    gbs = Minfo::MinfoGbs.new(value_double)
    updated_gbs = gbs - Minfo::MinfoGbs.new(value)

    assert(updated_gbs == Minfo::MinfoGbs.new(value))
  end
end
