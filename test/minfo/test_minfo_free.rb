require_relative '../test__helper.rb'

require 'minitest/autorun'
require_relative '../../lib/minfo.rb'

class MinfoFreeTest < Minitest::Test
  def test_used
    free = Minfo::MemoryInfo.new.memory_shot.free

    assert(!free.nil?)

    assert(free.to_kb.value > 0)
    assert(free.to_mb.value > 0)
    assert(free.to_gb.value > 0)
  end
end
