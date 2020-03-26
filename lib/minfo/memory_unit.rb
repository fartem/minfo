require_relative 'units/minfo_kb.rb'
require_relative 'units/minfo_mb.rb'
require_relative 'units/minfo_gb.rb'

module Minfo
  # Class for storing memory value.
  class MemoryUnit
    def initialize(memory_value)
      @memory_value = memory_value
    end

    # Get memory value in kbs.
    def to_kb
      MinfoKb.new(@memory_value)
    end

    # Get memory value in mbs.
    def to_mb
      MinfoMb.new(@memory_value)
    end

    # Get memory value in gbs.
    def to_gb
      MinfoGb.new(@memory_value)
    end

    # Method for memory calculation support.
    def -(other)
      MemoryUnit.new((to_kb - other.to_kb).value)
    end
  end
end
