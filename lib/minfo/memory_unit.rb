require_relative 'units/minfo_kbs.rb'
require_relative 'units/minfo_mbs.rb'
require_relative 'units/minfo_gbs.rb'

module Minfo
  # Class for storing memory value.
  class MemoryUnit
    def initialize(memory_value)
      @memory_value = memory_value
    end

    # Get memory value in kbs.
    def minfo_kbs
      MinfoKbs.new(@memory_value)
    end

    # Get memory value in mbs.
    def minfo_mbs
      MinfoMbs.new(@memory_value)
    end

    # Get memory value in gbs.
    def minfo_gbs
      MinfoGbs.new(@memory_value)
    end

    # Method for memory calculation support.
    def -(other)
      MemoryUnit.new((minfo_kbs - other.minfo_kbs).value)
    end
  end
end
