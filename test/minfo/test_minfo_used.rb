require_relative '../test__helper.rb'

require 'minitest/autorun'
require_relative '../../lib/minfo.rb'

class MinfoUsedTest < Minitest::Test
  def test_used
    used = Minfo::MemoryInfo.new.memory_shot.used

    assert(!used.nil?)

    assert(used.to_kb.value > 0)
    assert(used.to_mb.value > 0)
    assert(used.to_gb.value > 0)
  end
end
