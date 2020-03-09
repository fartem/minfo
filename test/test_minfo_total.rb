require 'test/unit'
require_relative '../lib/minfo.rb'

class MinfoTotalTest < Test::Unit::TestCase
  def test_total
    total = Minfo::MemoryInfo.new.memory_shot.total

    assert_equal(
      false,
      total.nil?
    )

    kb = total.to_kb
    assert_equal(
      true,
      kb > 1024 * 1024
    )
    assert_equal(
      (kb.to_f / 1024).round(0),
      total.to_mb
    )
    assert_equal(
      (kb.to_f / 1024 / 1024).round(2),
      total.to_gb
    )
  end
end
