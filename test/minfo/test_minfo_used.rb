require_relative '../test__helper.rb'

require 'minitest/autorun'
require_relative '../../lib/minfo.rb'

class MinfoUsedTest < Minitest::Test
  def test_used
    used = Minfo::MemoryInfo.new.memory_shot.used

    assert(!used.nil?)

    assert(used.minfo_kbs.value > 0)
    assert(used.minfo_mbs.value > 0)
    assert(used.minfo_gbs.value > 0)
  end
end
