require 'test/unit'
require_relative '../lib/minfo.rb'

class MinfoFreeTest < Test::Unit::TestCase
  def test_used
    free = Minfo::MemoryInfo.new.memory_shot.free

    assert_equal(
      false,
      free.nil?
    )

    assert_equal(
      true,
      free.to_kb > 0
    )
    assert_equal(
      true,
      free.to_mb > 0
    )
    assert_equal(
      true,
      free.to_gb > 0
    )
  end
end
