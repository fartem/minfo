require 'minitest/autorun'
require_relative '../../lib/minfo.rb'
require_relative '../test__helper.rb'

class MinfoUsedTest < Minitest::Test
  def test_used
    used = Minfo::MemoryInfo.new.memory_shot.used

    assert(!used.nil?)

    assert(used.to_kb > 0)
    assert(used.to_mb > 0)
    assert(used.to_gb > 0)
  end
end
