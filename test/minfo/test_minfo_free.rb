require_relative '../test__helper.rb'

require 'minitest/autorun'
require_relative '../../lib/minfo.rb'

class MinfoFreeTest < Minitest::Test
  def test_used
    free = Minfo::MemoryInfo.new.memory_shot.free

    assert(!free.nil?)

    assert(free.to_kbs > 0)
    assert(free.to_mbs > 0)
    assert(free.to_gbs > 0)
  end
end
