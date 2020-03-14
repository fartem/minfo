require 'test/unit'
require_relative '../lib/minfo.rb'

class MinfoUsedTest < Test::Unit::TestCase
  def test_used
    used = Minfo::MemoryInfo.new.memory_shot.used

    assert_equal(
      false,
      used.nil?
    )

    kb = used.to_kb
    assert_equal(
      true,
      kb > 1024 * 1024
    )
    assert_equal(
      kb / 1024,
      used.to_mb
    )
    assert_equal(
      (kb.to_f / 1024 / 1024).round(2),
      used.to_gb
    )
  end
end
