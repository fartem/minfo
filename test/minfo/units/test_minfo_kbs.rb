require_relative '../../test__helper.rb'

require 'minitest/autorun'
require_relative '../../../lib/minfo/units/minfo_kbs.rb'

class MinfoKbsTest < Minitest::Test
  def test_additional
    value = 1048576

    gbs = Minfo::MinfoKbs.new(value)
    updated_gbs = gbs + Minfo::MinfoKbs.new(value)

    assert(updated_gbs == Minfo::MinfoKbs.new(value * 2))
  end

  def test_subtraction
    value = 1048576
    value_double = value * 2

    gbs = Minfo::MinfoKbs.new(value_double)
    updated_gbs = gbs - Minfo::MinfoKbs.new(value)

    assert(updated_gbs == Minfo::MinfoKbs.new(value))
  end
end
