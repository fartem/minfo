require 'test/unit'
require_relative '../lib/minfo.rb'

class MinfoFreeTest < Test::Unit::TestCase
  def test_used
    free = Minfo::MemoryInfo.new.memory_shot.free

    assert_equal(
      false,
      free.nil?
    )

    kb = free.to_kb
    assert_equal(
      true,
      kb > 1024 * 1024
    )

    assert_equal(
      (kb.to_f / 1024).round(0),
      free.to_mb
    )
    assert_equal(
      (kb.to_f / 1024 / 1024).round(2),
      free.to_gb
    )
  end
end
