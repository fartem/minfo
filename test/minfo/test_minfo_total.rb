require_relative '../test__helper.rb'

require 'minitest/autorun'
require_relative '../../lib/minfo.rb'

class MinfoTotalTest < Minitest::Test
  def test_total
    total = Minfo::MemoryInfo.new.memory_shot.total

    assert(!total.nil?)

    assert(total.to_kb.value > 0)
    assert(total.to_mb.value > 0)
    assert(total.to_gb.value > 0)
  end
end
