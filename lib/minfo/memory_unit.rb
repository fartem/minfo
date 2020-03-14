module Minfo
  # Class for storing memory value.
  class MemoryUnit
    def initialize(memory_value)
      @memory_value = memory_value
    end

    # Get memory value in kbs.
    def to_kb
      @memory_value
    end

    # Get memory value in mbs.
    def to_mb
      @memory_value / 1024
    end

    # Get memory value in gbs.
    def to_gb
      (@memory_value.to_f / 1024 / 1024).round(2)
    end

    # Method for memory calculation support.
    def -(other)
      to_kb - other.to_kb
    end
  end
end
