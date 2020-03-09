require 'test/unit'
require_relative '../lib/minfo.rb'

class MinfoTotalTest < Test::Unit::TestCase
  def test_total
    total = Minfo::MemoryInfo.new.memory_shot.total

    assert_equal(
      false,
      total.nil?
    )

    assert_equal(
      true,
      total.to_kb > 0
    )
    assert_equal(
      true,
      total.to_mb > 0
    )
    assert_equal(
      true,
      total.to_gb > 0
    )
  end
end
