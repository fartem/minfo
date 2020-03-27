module Minfo
  # Class for storing memory value.
  class MemoryUnit
    def initialize(kbs)
      @kbs = kbs
    end

    # Get memory value in kbs.
    def to_kbs
      @kbs
    end

    # Get memory value in mbs.
    def to_mbs
      @kbs / 1024
    end

    # Get memory value in gbs.
    def to_gbs
      (@kbs / 1024 / 1024).round(2)
    end

    # Method for memory calculation support.
    def -(other)
      MemoryUnit.new(@kbs - other.to_kbs)
    end
  end
end
