require_relative '../test__helper.rb'

require 'minitest/autorun'
require_relative '../../lib/minfo.rb'

class MinfoTotalTest < Minitest::Test
  def test_total
    total = Minfo::MemoryInfo.new.memory_shot.total

    assert(!total.nil?)

    assert(total.to_kb > 0)
    assert(total.to_mb > 0)
    assert(total.to_gb > 0)
  end
end
