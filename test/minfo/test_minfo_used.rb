require 'test/unit'
require_relative '../../lib/minfo.rb'

class MinfoUsedTest < Test::Unit::TestCase
  def test_used
    used = Minfo::MemoryInfo.new.memory_shot.used

    assert_equal(
      false,
      used.nil?
    )

    assert_equal(
      true,
      used.to_kb > 0
    )
    assert_equal(
      true,
      used.to_mb > 0
    )
    assert_equal(
      true,
      used.to_gb > 0
    )
  end
end
