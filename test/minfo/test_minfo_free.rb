require_relative '../test__helper.rb'

require 'minitest/autorun'
require_relative '../../lib/minfo.rb'

class MinfoFreeTest < Minitest::Test
  def test_used
    free = Minfo::MemoryInfo.new.memory_shot.free

    assert(!free.nil?)

    assert(free.minfo_kbs.value > 0)
    assert(free.minfo_mbs.value > 0)
    assert(free.minfo_gbs.value > 0)
  end
end
