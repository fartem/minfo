require 'minitest/autorun'
require_relative '../../lib/minfo.rb'
require_relative '../test__helper.rb'

class MinfoFreeTest < Minitest::Test
  def test_used
    free = Minfo::MemoryInfo.new.memory_shot.free

    assert(!free.nil?)

    assert(free.to_kb > 0)
    assert(free.to_mb > 0)
    assert(free.to_gb > 0)
  end
end
