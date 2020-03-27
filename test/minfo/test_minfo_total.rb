require_relative '../test__helper.rb'

require 'minitest/autorun'
require_relative '../../lib/minfo.rb'

class MinfoTotalTest < Minitest::Test
  def test_total
    total = Minfo::MemoryInfo.new.memory_shot.total

    assert(!total.nil?)

    assert(total.minfo_kbs.value > 0)
    assert(total.minfo_mbs.value > 0)
    assert(total.minfo_gbs.value > 0)
  end
end
