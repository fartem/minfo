require_relative '../test__helper.rb'

require 'minitest/autorun'
require_relative '../../lib/minfo.rb'

class MinfoUsedTest < Minitest::Test
  def test_used
    used = Minfo::MemoryInfo.new.memory_shot.used

    assert(!used.nil?)

    assert(used.to_kbs > 0)
    assert(used.to_mbs > 0)
    assert(used.to_gbs > 0)
  end
end
